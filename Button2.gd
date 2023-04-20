extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.has_feature('JavaScript'):
		JavaScript.eval("""
			console.log('The JavaScript singleton is available')
		""")
	else:
		print("The JavaScript singleton is NOT available")

func _pressed():
	var window2 = JavaScript.get_interface("window")
	window2.loginAnchor()

