extends ColorRect

const MAX_HEALTH := 100.0
const MIN_HEALTH := 0.0

var health := 90.0

# simple example to set the shader scalar uniform in gdscript with remap
func _ready():
	var remapped_health = range_lerp(health, MIN_HEALTH, MAX_HEALTH, 0.0, 1.0)
	$HealthBar.material.set_shader_param("health", remapped_health)
	$Label.set_text("%1.1f/1.0\n%d/%d" % [remapped_health, health, MAX_HEALTH])

