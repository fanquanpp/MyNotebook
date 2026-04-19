// 图实现
// 支持邻接表表示和遍历算法

/**
 * 图类
 */
class Graph {
    constructor() {
        this.adjacencyList = new Map(); // 邻接表
        this.vertices = 0; // 顶点数量
    }

    /**
     * 添加顶点
     * @param {*} vertex - 顶点值
     */
    addVertex(vertex) {
        if (!this.adjacencyList.has(vertex)) {
            this.adjacencyList.set(vertex, []);
            this.vertices++;
        }
        return this;
    }

    /**
     * 添加边
     * @param {*} vertex1 - 第一个顶点
     * @param {*} vertex2 - 第二个顶点
     * @param {boolean} directed - 是否为有向边
     */
    addEdge(vertex1, vertex2, directed = false) {
        // 确保顶点存在
        if (!this.adjacencyList.has(vertex1)) {
            this.addVertex(vertex1);
        }
        if (!this.adjacencyList.has(vertex2)) {
            this.addVertex(vertex2);
        }

        // 添加边
        this.adjacencyList.get(vertex1).push(vertex2);
        
        // 如果是无向边，添加反向边
        if (!directed) {
            this.adjacencyList.get(vertex2).push(vertex1);
        }

        return this;
    }

    /**
     * 删除边
     * @param {*} vertex1 - 第一个顶点
     * @param {*} vertex2 - 第二个顶点
     * @param {boolean} directed - 是否为有向边
     */
    removeEdge(vertex1, vertex2, directed = false) {
        if (this.adjacencyList.has(vertex1)) {
            this.adjacencyList.set(
                vertex1,
                this.adjacencyList.get(vertex1).filter(v => v !== vertex2)
            );
        }

        if (!directed && this.adjacencyList.has(vertex2)) {
            this.adjacencyList.set(
                vertex2,
                this.adjacencyList.get(vertex2).filter(v => v !== vertex1)
            );
        }

        return this;
    }

    /**
     * 删除顶点
     * @param {*} vertex - 要删除的顶点
     */
    removeVertex(vertex) {
        if (!this.adjacencyList.has(vertex)) {
            return this;
        }

        // 删除与该顶点相关的所有边
        for (const adjacentVertex of this.adjacencyList.get(vertex)) {
            this.removeEdge(adjacentVertex, vertex, true);
        }

        // 删除顶点本身
        this.adjacencyList.delete(vertex);
        this.vertices--;

        return this;
    }

    /**
     * 深度优先搜索 (DFS)
     * @param {*} startVertex - 起始顶点
     * @returns {Array} - 遍历结果
     */
    depthFirstSearch(startVertex) {
        const result = [];
        const visited = new Set();

        const dfs = (vertex) => {
            if (!vertex) return;
            if (visited.has(vertex)) return;

            visited.add(vertex);
            result.push(vertex);

            for (const neighbor of this.adjacencyList.get(vertex)) {
                dfs(neighbor);
            }
        };

        dfs(startVertex);
        return result;
    }

    /**
     * 广度优先搜索 (BFS)
     * @param {*} startVertex - 起始顶点
     * @returns {Array} - 遍历结果
     */
    breadthFirstSearch(startVertex) {
        const result = [];
        const visited = new Set();
        const queue = [startVertex];

        visited.add(startVertex);

        while (queue.length) {
            const currentVertex = queue.shift();
            result.push(currentVertex);

            for (const neighbor of this.adjacencyList.get(currentVertex)) {
                if (!visited.has(neighbor)) {
                    visited.add(neighbor);
                    queue.push(neighbor);
                }
            }
        }

        return result;
    }

    /**
     * 获取所有顶点
     * @returns {Array} - 所有顶点
     */
    getVertices() {
        return Array.from(this.adjacencyList.keys());
    }

    /**
     * 获取所有边
     * @returns {Array} - 所有边
     */
    getEdges() {
        const edges = [];

        for (const [vertex, neighbors] of this.adjacencyList.entries()) {
            for (const neighbor of neighbors) {
                edges.push([vertex, neighbor]);
            }
        }

        return edges;
    }

    /**
     * 检查顶点是否存在
     * @param {*} vertex - 顶点值
     * @returns {boolean} - 顶点是否存在
     */
    hasVertex(vertex) {
        return this.adjacencyList.has(vertex);
    }

    /**
     * 检查边是否存在
     * @param {*} vertex1 - 第一个顶点
     * @param {*} vertex2 - 第二个顶点
     * @returns {boolean} - 边是否存在
     */
    hasEdge(vertex1, vertex2) {
        return this.adjacencyList.has(vertex1) && this.adjacencyList.get(vertex1).includes(vertex2);
    }

    /**
     * 获取顶点的邻居
     * @param {*} vertex - 顶点值
     * @returns {Array} - 顶点的邻居
     */
    getNeighbors(vertex) {
        if (!this.adjacencyList.has(vertex)) {
            return [];
        }
        return this.adjacencyList.get(vertex);
    }

    /**
     * 获取图的大小（顶点数量）
     * @returns {number} - 顶点数量
     */
    size() {
        return this.vertices;
    }

    /**
     * 检查图是否为空
     * @returns {boolean} - 图是否为空
     */
    isEmpty() {
        return this.vertices === 0;
    }

    /**
     * 清空图
     */
    clear() {
        this.adjacencyList.clear();
        this.vertices = 0;
    }

    /**
     * 打印图
     */
    print() {
        console.log('图的邻接表表示:');
        for (const [vertex, neighbors] of this.adjacencyList.entries()) {
            console.log(`${vertex} -> ${neighbors.join(', ')}`);
        }
    }
}

// 测试图
if (require.main === module) {
    console.log('测试图:');
    const graph = new Graph();
    
    // 测试 addVertex 和 addEdge
    graph.addVertex('A');
    graph.addVertex('B');
    graph.addVertex('C');
    graph.addVertex('D');
    graph.addVertex('E');
    
    graph.addEdge('A', 'B');
    graph.addEdge('A', 'C');
    graph.addEdge('B', 'D');
    graph.addEdge('C', 'E');
    graph.addEdge('D', 'E');
    
    console.log('添加顶点和边后:');
    graph.print();
    
    // 测试 depthFirstSearch
    console.log('深度优先搜索结果:', graph.depthFirstSearch('A'));
    
    // 测试 breadthFirstSearch
    console.log('广度优先搜索结果:', graph.breadthFirstSearch('A'));
    
    // 测试 removeEdge
    console.log('删除边 A-B 后:');
    graph.removeEdge('A', 'B');
    graph.print();
    
    // 测试 removeVertex
    console.log('删除顶点 C 后:');
    graph.removeVertex('C');
    graph.print();
    
    // 测试 getVertices 和 getEdges
    console.log('所有顶点:', graph.getVertices());
    console.log('所有边:', graph.getEdges());
    
    // 测试 hasVertex 和 hasEdge
    console.log('是否存在顶点 A:', graph.hasVertex('A'));
    console.log('是否存在边 B-D:', graph.hasEdge('B', 'D'));
    
    // 测试 getNeighbors
    console.log('顶点 A 的邻居:', graph.getNeighbors('A'));
    
    // 测试 size 和 isEmpty
    console.log('图的大小:', graph.size());
    console.log('图是否为空:', graph.isEmpty());
    
    // 测试 clear
    graph.clear();
    console.log('清空图后:');
    console.log('图的大小:', graph.size());
    console.log('图是否为空:', graph.isEmpty());
}

module.exports = Graph;