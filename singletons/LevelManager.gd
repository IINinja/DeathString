extends Node

var player_max_health = -1
var player_cur_health = -1

var level_list = [
	"res://levels/Tutorial.tscn",
	"res://levels/FirstEncounter.tscn",
	"res://levels/IntroducingBull.tscn",
	"res://levels/MixedCrew.tscn",
	"res://levels/BunchaBull.tscn",
	"res://levels/Chaotic.tscn"
]
var cur_level_ind = 0

func load_next_level():
	cur_level_ind += 1
	cur_level_ind %= level_list.size()
	get_tree().call_group("instanced", "queue_free")
	get_tree().change_scene(level_list[cur_level_ind])
