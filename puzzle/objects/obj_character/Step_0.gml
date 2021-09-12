
//check if box needs to be following mouse
if (boxBeingHeld != noone)
{
	boxBeingHeld.x = mouse_x;
	boxBeingHeld.y = mouse_y;
}

// if character picks up box1
if (distance_to_object(obj_box1) < 20
							&& keyboard_check_pressed(ord("E")))
{	
	// if character is already holding a box
	if (characterHasBox)
	{
		// drop boxBehindHeld
		// boxBeingHeld
	}
	characterHasBox = true;
	boxBeingHeld = obj_box1;
	// if character was facing right
	if (sprite_index == spr_characterIdleR || 
					sprite_index == spr_characterWalkingR)
	{
		sprite_index = spr_characterIdleBoxR
	}
	else
	{
		sprite_index = spr_characterIdleBoxL
	}
}
// if character picks up box2
if (distance_to_object(obj_box2) < 20
							&& keyboard_check_pressed(ord("E")))
{	
	// if character is already holding a box
	if (characterHasBox)
	{
		// drop boxBehindHeld
		// boxBeingHeld
	}
	characterHasBox = true;
	boxBeingHeld = obj_box2;
	// if character was facing right
	if (sprite_index == spr_characterIdleR || 
					sprite_index == spr_characterWalkingR)
	{
		sprite_index = spr_characterIdleBoxR
	}
	else
	{
		sprite_index = spr_characterIdleBoxL
	}
}
// if character picks up box3
if (distance_to_object(obj_box3) < 20
							&& keyboard_check_pressed(ord("E")))
{	
	// if character is already holding a box
	if (characterHasBox)
	{
		// drop boxBehindHeld
		// boxBeingHeld
	}
	characterHasBox = true;
	boxBeingHeld = obj_box3;
	// if character was facing right
	if (sprite_index == spr_characterIdleR || 
					sprite_index == spr_characterWalkingR)
	{
		sprite_index = spr_characterIdleBoxR
	}
	else
	{
		sprite_index = spr_characterIdleBoxL
	}
}

// if character drops a box
if (characterHasBox && keyboard_check_pressed(ord("X")))
{	
	characterHasBox = false;
	boxBeingHeld.x = obj_character.x
	boxBeingHeld.y = obj_character.y
	boxBeingHeld = noone;
	// if character was facing right
	if (sprite_index == spr_characterIdleBoxR || 
					sprite_index == spr_characterWalkingBoxR)
	{
		sprite_index = spr_characterIdleR
	}
	else
	{
		sprite_index = spr_characterIdleL
	}
}






// if a player stops moving while facing left IDLE
if (keyboard_check_released(ord("A")))
{
	image_speed = walkSpeed/50; // smooth out movement
	if (characterHasBox)
	{
		sprite_index = spr_characterIdleBoxL
	}
	else
	{
		sprite_index = spr_characterIdleL
	}
}

// if a player stops moving while facing right IDLE
if (keyboard_check_released(ord("D")))
{
	image_speed = walkSpeed/50; // smooth out movement
	if (characterHasBox)
	{
		sprite_index = spr_characterIdleBoxR
	}
	else
	{
		sprite_index = spr_characterIdleR
	}
}

// if player tries to move left
if (keyboard_check(ord("A")))
{
	x -= walkSpeed; // decrease to go left
	image_speed = walkSpeed/25; // smooth out movement
	if (characterHasBox)
	{
		sprite_index = spr_characterWalkingBoxL
	}
	else
	{
		sprite_index = spr_characterWalkingL
	}
}

// if player tries to move right
if (keyboard_check(ord("D")))
{
	x += walkSpeed; // increase to go right
	image_speed = walkSpeed/25; // smooth out movement
	if (characterHasBox)
	{
		sprite_index = spr_characterWalkingBoxR
	}
	else
	{
		sprite_index = spr_characterWalkingR
	}
}


// if player going up ramp


// if player going down ramp