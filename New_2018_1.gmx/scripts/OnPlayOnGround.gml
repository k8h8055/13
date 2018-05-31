/// OnPlayOnGround(argument0,id);

return (((place_meeting(x, y + abs(sign(argument0)), O_Block_empty_parent) && argument0 > 0) && !((place_meeting(x, y + sign(argument0), O_Block_empty_parent)) && argument0 > 0))
    || ((place_meeting(x, y - sign(argument0), O_Block_empty_parent)) && argument0 > 0 && !collision_rectangle(x-argument1.sprite_width/2,y+argument1.sprite_height/2 - 1,x+argument1.sprite_width/2,y+argument1.sprite_height/2,O_Block_empty_parent,1,0)))
    
    
