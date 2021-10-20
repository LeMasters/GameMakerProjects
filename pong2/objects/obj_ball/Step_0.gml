/// @description Insert description here
// You can write your code in this editor
checkGoal = tilemap_get_at_pixel(goal, x, y);
checkEnemyGoal = tilemap_get_at_pixel(enemy_goal, x, y);

if(checkGoal > 0 )
{
	obj_player_line.goal_point += 1;
	instance_create_layer(start.cx, start.cy, "Instances", obj_ball);
	instance_destroy(self);
}

if(checkEnemyGoal > 0)
{
	obj_enemy_line.goal_point += 1;
	instance_create_layer(start.cx, start.cy, "Instances", obj_ball);
	instance_destroy(self);
}

