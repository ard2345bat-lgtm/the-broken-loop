extends Node2D
const GRID_SIZE = 5
const TILE_SIZE = 64

func _ready():
	create_grid()

func create_grid():
	for x in range(GRID_SIZE):
		for y in range(GRID_SIZE):
			var tile = Polygon2D.new()

			var points = [
				Vector2(0,0),
				Vector2(TILE_SIZE,0),
				Vector2(TILE_SIZE,TILE_SIZE),
				Vector2(0,TILE_SIZE)
			]

			tile.polygon = points
			tile.position = Vector2(x * TILE_SIZE, y * TILE_SIZE)
			tile.color = Color(0.4,0.4,0.4)

			add_child(tile)
