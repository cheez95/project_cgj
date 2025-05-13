extends Node2D

@onready var main_menu: Control = $"../MainMenu"
@onready var inventory_ui: Control = $"../UIManager/InventoryUI"
var inventory_open := false

func _process(delta):
	if Input.is_action_just_pressed("open_main_menu"):
		main_menu.visible = true

func _ready():
	inventory_ui.visible = false

func _unhandled_input(event):
	if event.is_action_pressed("open_player_inventory"):
		inventory_open = !inventory_open
		inventory_ui.visible = inventory_open
