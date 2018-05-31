/// Weapon_Attack_npc(_attack_Delay, _attack_Delay_2, _attack_Delay_max, _attack_delay_next,id2,EnTarget);

if argument0 <= 0 && (argument1 <= argument2 - argument3)
{
if instance_exists(argument5){
if instance_exists(argument4){
argument4._attack_Delay_2 = argument4._attack_Delay_max-argument4._attack_Delay_max/2;
//argument4.argument0 = argument4.argument2;
}
//image_angle = (point_direction(x,y, argument5.x,argument5.y)-(_rot_on - _rot_scale))
check_x = argument5.x
check_y = argument5.y
check_xscale = _xscale;
check_x_pos = x;
check_y_pos = y;
_attack_Delay = argument2;
_attack_Delay_2 = 0;
}
}
return _attack_Delay;

return _attack_Delay_2;
