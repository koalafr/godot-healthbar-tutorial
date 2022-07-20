extends ColorRect

var time := 0.0

# simple example to set the shader scalar uniform in gdscript
func _process(delta):
	time += delta
	self.material.set_shader_param("health", abs(cos(time)))
