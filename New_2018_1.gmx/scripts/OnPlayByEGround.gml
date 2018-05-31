/// OnPlayByEGround(_xspd,_yspd);
return ((place_meeting(x + sign(argument0), y-sign(argument1), O_Block_empty_parent))
|| (place_meeting(x + sign(argument0), y+sign(argument1), O_Block_empty_parent)))
&& (!place_meeting(x + sign(argument0) * 2, y , O_Block_Parent));

