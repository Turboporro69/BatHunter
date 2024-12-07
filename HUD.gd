extends CanvasLayer


onready var label = $Label
onready var controls = $Controls 

func _ready():
	label.show()
	controls.hide()

func _physics_process(delta):
	if Input.is_action_just_pressed("roll"):
		label.hide()    
		controls.show()
	
	if Input.is_action_just_pressed("ui_select"):
		queue_free()
