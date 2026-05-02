const express = require('express');
const fs = require('fs');
const path = require('path');
const { marked } = require('marked');
const chokidar = require('chokidar');

const app = express();
const PORT = process.env.PORT || 3000;
const PROJECT_ROOT = path.join(__dirname, '..');

// Serve static files
app.use(express.static(path.join(PROJECT_ROOT)));

// API: List all markdown files
app.get('/api/files', (req, res) => {
    const files = [];

    function walkDir(dir) {
        const items = fs.readdirSync(dir);

        items.forEach(item => {
            const fullPath = path.join(dir, item);
            const relPath = path.relative(PROJECT_ROOT, fullPath);

            // Skip certain directories
            if (relPath.startsWith('.git') ||
                relPath.startsWith('node_modules') ||
                relPath.startsWith('cms') ||
                relPath.startsWith('Renpydoc') ||
                relPath.startsWith('Godotdoc')) {
                return;
            }

            const stat = fs.statSync(fullPath);

            if (stat.isDirectory()) {
                walkDir(fullPath);
            } else if (item.endsWith('.md')) {
                files.push({
                    path: relPath.replace(/\\/g, '/'),
                    name: item,
                    size: stat.size,
                    modified: stat.mtime
                });
            }
        });
    }

    walkDir(PROJECT_ROOT);
    res.json(files);
});

// API: Get file content
app.get('/api/file/*', (req, res) => {
    const filePath = req.params[0];
    const fullPath = path.join(PROJECT_ROOT, filePath);

    // Security: prevent directory traversal
    if (!fullPath.startsWith(PROJECT_ROOT)) {
        return res.status(403).json({ error: 'Forbidden' });
    }

    try {
        const content = fs.readFileSync(fullPath, 'utf8');
        const html = marked(content);
        res.json({
            path: filePath,
            content: content,
            html: html,
            stats: fs.statSync(fullPath)
        });
    } catch (err) {
        res.status(404).json({ error: 'File not found' });
    }
});

// API: Save file
app.post('/api/file/*', express.text({ type: 'text/*' }), (req, res) => {
    const filePath = req.params[0];
    const fullPath = path.join(PROJECT_ROOT, filePath);

    // Security: prevent directory traversal
    if (!fullPath.startsWith(PROJECT_ROOT)) {
        return res.status(403).json({ error: 'Forbidden' });
    }

    try {
        // Ensure directory exists
        const dir = path.dirname(fullPath);
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir, { recursive: true });
        }

        fs.writeFileSync(fullPath, req.body, 'utf8');
        res.json({ success: true, path: filePath });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// API: Run validation checks
app.get('/api/validate', (req, res) => {
    const { execSync } = require('child_process');
    const utf8Bom = Buffer.from([0xEF, 0xBB, 0xBF]);

    const results = {
        encoding: [],
        brokenLinks: [],
        namingConvention: []
    };

    function walkDir(dir) {
        const items = fs.readdirSync(dir);

        items.forEach(item => {
            const fullPath = path.join(dir, item);
            const relPath = path.relative(PROJECT_ROOT, fullPath);

            // Skip certain directories
            if (relPath.startsWith('.git') ||
                relPath.startsWith('node_modules') ||
                relPath.startsWith('cms') ||
                relPath.startsWith('Renpydoc') ||
                relPath.startsWith('Godotdoc')) {
                return;
            }

            const stat = fs.statSync(fullPath);

            if (stat.isDirectory()) {
                walkDir(fullPath);
            } else if (item.endsWith('.md')) {
                // Check for BOM
                const buffer = fs.readFileSync(fullPath);
                if (buffer.length >= 3 &&
                    buffer[0] === 0xEF &&
                    buffer[1] === 0xBB &&
                    buffer[2] === 0xBF) {
                    results.encoding.push(relPath.replace(/\\/g, '/'));
                }

                // Check naming convention
                if (item !== 'README.md' &&
                    !item.match(/^(C|G|V)\d{2}_\d{3}-.+\.md$/)) {
                    results.namingConvention.push(relPath.replace(/\\/g, '/'));
                }
            }
        });
    }

    walkDir(PROJECT_ROOT);
    res.json(results);
});

// API: Quality score
app.get('/api/quality', (req, res) => {
    const files = [];
    let totalScore = 0;

    function walkDir(dir) {
        const items = fs.readdirSync(dir);

        items.forEach(item => {
            const fullPath = path.join(dir, item);
            const relPath = path.relative(PROJECT_ROOT, fullPath);

            // Skip certain directories
            if (relPath.startsWith('.git') ||
                relPath.startsWith('node_modules') ||
                relPath.startsWith('cms') ||
                relPath.startsWith('Renpydoc') ||
                relPath.startsWith('Godotdoc')) {
                return;
            }

            const stat = fs.statSync(fullPath);

            if (stat.isDirectory()) {
                walkDir(fullPath);
            } else if (item.endsWith('.md')) {
                const content = fs.readFileSync(fullPath, 'utf8');
                let score = 100;

                // Basic scoring
                if (content.length < 200) score -= 20;
                if (!content.match(/^#{1,3}\s+/m)) score -= 15;
                if (!content.match(/```/)) score -= 15;
                if (!content.match(/\[[^\]]+\]\([^)]+\)/)) score -= 10;

                // Encoding check
                const buffer = fs.readFileSync(fullPath);
                if (buffer.length >= 3 &&
                    buffer[0] === 0xEF &&
                    buffer[1] === 0xBB &&
                    buffer[2] === 0xBF) {
                    score -= 30;
                }

                files.push({
                    path: relPath.replace(/\\/g, '/'),
                    score: Math.max(0, score)
                });

                totalScore += score;
            }
        });
    }

    walkDir(PROJECT_ROOT);

    const avgScore = files.length > 0 ? totalScore / files.length : 0;

    res.json({
        averageScore: Math.round(avgScore * 100) / 100,
        totalFiles: files.length,
        files: files.sort((a, b) => a.score - b.score)
    });
});

// Web interface: File browser
app.get('/', (req, res) => {
    res.send(`
<!DOCTYPE html>
<html>
<head>
    <title>MyNotebook CMS</title>
    <style>
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; background: #f5f5f5; }
        .container { max-width: 1400px; margin: 0 auto; padding: 20px; }
        header { background: #1976d2; color: white; padding: 20px; border-radius: 8px; margin-bottom: 20px; }
        header h1 { font-size: 24px; }
        .toolbar { background: white; padding: 15px; border-radius: 8px; margin-bottom: 20px; display: flex; gap: 10px; align-items: center; }
        .toolbar button { padding: 8px 16px; border: none; border-radius: 4px; cursor: pointer; }
        .btn-primary { background: #1976d2; color: white; }
        .btn-success { background: #388e3c; color: white; }
        .btn-warning { background: #f57c00; color: white; }
        .stats { display: flex; gap: 20px; }
        .stat { background: #e3f2fd; padding: 10px 20px; border-radius: 4px; }
        .stat-value { font-size: 24px; font-weight: bold; color: #1976d2; }
        .stat-label { font-size: 12px; color: #666; }
        .file-list { background: white; border-radius: 8px; overflow: hidden; }
        .file-item { padding: 15px; border-bottom: 1px solid #eee; cursor: pointer; display: flex; justify-content: space-between; align-items: center; }
        .file-item:hover { background: #f5f5f5; }
        .file-name { font-weight: 500; }
        .file-path { font-size: 12px; color: #666; }
        .file-score { padding: 4px 8px; border-radius: 4px; font-size: 12px; font-weight: bold; }
        .score-high { background: #c8e6c9; color: #2e7d32; }
        .score-medium { background: #fff9c4; color: #f57c00; }
        .score-low { background: #ffcdd2; color: #c62828; }
        .modal { display: none; position: fixed; top: 0; left: 0; right: 0; bottom: 0; background: rgba(0,0,0,0.5); z-index: 1000; }
        .modal.active { display: flex; align-items: center; justify-content: center; }
        .modal-content { background: white; border-radius: 8px; width: 90%; height: 90%; display: flex; flex-direction: column; }
        .modal-header { padding: 15px 20px; border-bottom: 1px solid #eee; display: flex; justify-content: space-between; align-items: center; }
        .modal-body { flex: 1; display: flex; overflow: hidden; }
        .editor { flex: 1; padding: 20px; overflow: auto; }
        .preview { flex: 1; padding: 20px; overflow: auto; background: #fafafa; border-left: 1px solid #eee; }
        textarea { width: 100%; height: 100%; border: none; resize: none; font-family: 'Monaco', 'Menlo', monospace; font-size: 14px; line-height: 1.6; }
        .close { background: none; border: none; font-size: 24px; cursor: pointer; }
        .nav { display: flex; gap: 10px; }
        .nav a { padding: 8px 16px; background: #e3f2fd; color: #1976d2; text-decoration: none; border-radius: 4px; }
        .quality-badge { display: inline-block; padding: 20px; background: white; border-radius: 8px; text-align: center; }
        .quality-value { font-size: 48px; font-weight: bold; }
        .quality-label { font-size: 14px; color: #666; }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>MyNotebook CMS</h1>
            <p>Documentation Quality Management System</p>
        </header>

        <div class="toolbar">
            <button class="btn-primary" onclick="loadFiles()">Refresh</button>
            <button class="btn-success" onclick="validateAll()">Validate All</button>
            <button class="btn-warning" onclick="showQuality()">Quality Score</button>
            <div class="stats">
                <div class="stat">
                    <div class="stat-value" id="totalFiles">0</div>
                    <div class="stat-label">Total Files</div>
                </div>
                <div class="stat">
                    <div class="stat-value" id="encodingIssues">0</div>
                    <div class="stat-label">Encoding Issues</div>
                </div>
                <div class="stat">
                    <div class="stat-value" id="brokenLinks">0</div>
                    <div class="stat-label">Broken Links</div>
                </div>
            </div>
        </div>

        <div class="file-list" id="fileList">
            <div class="file-item">
                <div>Loading...</div>
            </div>
        </div>
    </div>

    <div class="modal" id="editModal">
        <div class="modal-content">
            <div class="modal-header">
                <span id="modalTitle">Edit File</span>
                <div class="nav">
                    <a href="#" onclick="togglePreview()">Toggle Preview</a>
                    <button class="btn-success" onclick="saveFile()">Save</button>
                    <button class="close" onclick="closeModal()">&times;</button>
                </div>
            </div>
            <div class="modal-body">
                <div class="editor" id="editorPane">
                    <textarea id="fileContent"></textarea>
                </div>
                <div class="preview" id="previewPane" style="display:none;"></div>
            </div>
        </div>
    </div>

    <script>
        let currentFile = null;
        let files = [];

        async function loadFiles() {
            const res = await fetch('/api/files');
            files = await res.json();
            renderFileList(files);
            document.getElementById('totalFiles').textContent = files.length;
        }

        function renderFileList(files) {
            const list = document.getElementById('fileList');
            list.innerHTML = files.map(f => \`
                <div class="file-item" onclick="openFile('\${f.path}')">
                    <div>
                        <div class="file-name">\${f.name}</div>
                        <div class="file-path">\${f.path}</div>
                    </div>
                    <div>\${formatDate(f.modified)}</div>
                </div>
            \`).join('');
        }

        async function openFile(path) {
            currentFile = path;
            const res = await fetch('/api/file/' + path);
            const data = await res.json();

            document.getElementById('modalTitle').textContent = path;
            document.getElementById('fileContent').value = data.content;
            document.getElementById('editModal').classList.add('active');
            updatePreview();
        }

        function closeModal() {
            document.getElementById('editModal').classList.remove('active');
            currentFile = null;
        }

        function togglePreview() {
            const preview = document.getElementById('previewPane');
            const editor = document.getElementById('editorPane');
            preview.style.display = preview.style.display === 'none' ? 'block' : 'none';
            editor.style.display = editor.style.display === 'none' ? 'block' : 'none';
            if (preview.style.display !== 'none') {
                updatePreview();
            }
        }

        function updatePreview() {
            const content = document.getElementById('fileContent').value;
            document.getElementById('previewPane').innerHTML = marked.parse(content);
        }

        async function saveFile() {
            const content = document.getElementById('fileContent').value;
            const res = await fetch('/api/file/' + currentFile, {
                method: 'POST',
                body: content
            });
            const result = await res.json();
            if (result.success) {
                alert('File saved successfully!');
                closeModal();
            } else {
                alert('Error saving file: ' + result.error);
            }
        }

        async function validateAll() {
            const res = await fetch('/api/validate');
            const results = await res.json();

            let issues = results.encoding.length;
            document.getElementById('encodingIssues').textContent = issues;

            alert('Validation complete!\\n' +
                  'Encoding issues: ' + issues + '\\n' +
                  'Naming convention issues: ' + results.namingConvention.length);
        }

        async function showQuality() {
            const res = await fetch('/api/quality');
            const data = await res.json();

            alert('Quality Score: ' + data.averageScore + '/100\\n' +
                  'Total Files: ' + data.totalFiles);
        }

        function formatDate(date) {
            return new Date(date).toLocaleDateString();
        }

        // Listen for content changes
        document.getElementById('fileContent')?.addEventListener('input', updatePreview);

        // Initial load
        loadFiles();
    </script>
</body>
</html>
    `);
});

app.listen(PORT, () => {
    console.log(`MyNotebook CMS running at http://localhost:${PORT}`);
    console.log(`Project root: ${PROJECT_ROOT}`);
});