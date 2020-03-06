extends Node

# Storage for the current run
var score = 0
# Storage for the best score so far
var best = 0

func set_run_score(_score):
	score = _score
	if score > best:
		best = score

