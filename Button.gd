extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	var console =  JavaScript.get_interface("console")
	var window = JavaScript.get_interface("window")
	console.log("teste")
	window.login()
	window.print("Igor Joaquim")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
