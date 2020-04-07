if last_spawned < time.stream and time.stream >= timer {
	create_enemy(x,y)
	timer = time.stream + timer_wait
	last_spawned = time.stream
}