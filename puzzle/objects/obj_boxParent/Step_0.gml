/// @description Insert description here
// You can write your code in this editor
if (!obj_character.characterHasBox && keyboard_check_pressed(ord("F")))
{
	if (distance_to_object(obj_character) < 40)
	{
		if(self.inTruck)
		{
			obj_truckOpen.numBoxes -= 1;
			self.inTruck = false;
			
		}
		obj_character.characterHasBox = true;
		obj_character.boxBeingHeld = self;
		obj_character.boxBeingHeld.image_alpha = .5;
		// if character was facing right
		if (obj_character.sprite_index == spr_characterIdleR || 
						sprite_index == spr_characterWalkingR)
		{
			obj_character.sprite_index = spr_characterIdleBoxR
		}
		else
		{
			obj_character.sprite_index = spr_characterIdleBoxL
		}
		
		// we found a box, do not look for more boxes.
	}
}