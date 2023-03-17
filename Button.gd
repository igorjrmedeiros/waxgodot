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
	var wax = JavaScript.eval("const wax = new waxjs.WaxJS({rpcEndpoint: 'https://wax.greymass.com'});")
	var waxAccount = JavaScript.eval("""
										try {
										  const userAccount = await wax.login();
										} catch(e) {
										  console.log(e.message);
										}""")
	
	#var console =  JavaScript.get_interface("console")
	#var window = JavaScript.get_interface("window")
	#console.log("teste")
	#window.login()
	#window.print("Igor Joaquim")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
