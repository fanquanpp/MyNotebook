/*
 * @Author:      Anonymous
 * @Algorithm:   A* 路径搜索 (A* Pathfinding)
 * @Language:    GDScript 4.x
 * @Time Compl.: O(E log V)
 * @Description: 在网格或图结构中查找最短路径。常用于游戏中的 AI 移动。 | Find shortest path in a grid or graph. Used for AI movement in games.
 * @Teaching:    掌握启发式函数 (Heuristic) 的选择。Godot 内置了 AStar2D/3D，但手写能加深理解。 | Choice of heuristic. Godot has built-in AStar2D/3D, but manual implementation aids understanding.
 */

extends Node

# 网格大小 | Grid size
const GRID_SIZE = 10

func _ready():
    var start = Vector2i(0, 0)
    var end = Vector2i(5, 5)
    var path = find_path(start, end)
    print("Path found: ", path)
    if path.size() > 0:
        print("A* tests passed! | A* 算法测试通过！")

func find_path(start: Vector2i, end: Vector2i) -> Array[Vector2i]:
    var open_set = [start]
    var came_from = {}
    var g_score = {start: 0}
    var f_score = {start: heuristic(start, end)}
    
    while open_set.size() > 0:
        # 获取 f_score 最小的节点 | Get node with lowest f_score
        var current = open_set[0]
        for node in open_set:
            if f_score.get(node, INF) < f_score.get(current, INF):
                current = node
        
        if current == end:
            return reconstruct_path(came_from, current)
            
        open_set.erase(current)
        
        for neighbor in get_neighbors(current):
            var tentative_g_score = g_score[current] + 1
            if tentative_g_score < g_score.get(neighbor, INF):
                came_from[neighbor] = current
                g_score[neighbor] = tentative_g_score
                f_score[neighbor] = tentative_g_score + heuristic(neighbor, end)
                if not neighbor in open_set:
                    open_set.append(neighbor)
                    
    return []

func heuristic(a: Vector2i, b: Vector2i) -> int:
    # 曼哈顿距离 | Manhattan distance
    return abs(a.x - b.x) + abs(a.y - b.y)

func get_neighbors(pos: Vector2i) -> Array[Vector2i]:
    var neighbors: Array[Vector2i] = []
    var directions = [Vector2i.UP, Vector2i.DOWN, Vector2i.LEFT, Vector2i.RIGHT]
    for d in directions:
        var n = pos + d
        if n.x >= 0 and n.x < GRID_SIZE and n.y >= 0 and n.y < GRID_SIZE:
            neighbors.append(n)
    return neighbors

func reconstruct_path(came_from: Dictionary, current: Vector2i) -> Array[Vector2i]:
    var total_path: Array[Vector2i] = [current]
    while current in came_from:
        current = came_from[current]
        total_path.push_front(current)
    return total_path
