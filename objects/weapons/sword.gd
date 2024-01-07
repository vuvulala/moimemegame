extends Node2D


@export
var sprite_frames: SpriteFrames

@onready
var sprite_node = $Sprite

func _ready():
	print(get_children())
	print(find_child("Sprite"))
	sprite_node.sprite_frames = sprite_frames

func _process(_delta):
	if abs(get_parent().velocity.x) > 0.5:
		sprite_node.play("walking")
	else:
		sprite_node.play("idle")
