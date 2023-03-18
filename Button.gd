extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if OS.has_feature('JavaScript'):
		JavaScript.eval("""
			console.log('The JavaScript singleton is available')
		""")
	else:
		print("The JavaScript singleton is NOT available")

func _pressed():
	var callback = JavaScript.create_callback(self, "consoleLog")
	var window = JavaScript.get_interface("window");
	window.login();
	var waxAccount = JavaScript.get_interface("userAccount")
	consoleLog(waxAccount)
	#var window = JavaScript.get_interface("window") 
	#console.log("teste")
	#window.login()
	#window.print("Igor Joaquim")

func consoleLog(args):
	var console = JavaScript.get_interface("console")
	console.log(args)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
