extends Node

var PlayerScore = 0
var OpponentScore = 0


func _on_Left_body_entered(body):
	$Ball.position = Vector2(540, 360)
	OpponentScore += 1

func _on_Right_body_entered(body):
	$Ball.position = Vector2(540, 360)
	PlayerScore += 1
	
func _process(delta):
	$Playerscore.text = str(PlayerScore)
	$OpponentScore.text = str(OpponentScore)
