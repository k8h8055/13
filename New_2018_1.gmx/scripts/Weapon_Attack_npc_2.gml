/// Weapon_Attack_npc(_attack_Delay, _attack_Delay_2, _attack_Delay_max, _attack_delay_next,id2,id);
var _argument0 = argument0;
var _argument1 = argument1;
var _argument2 = argument2;
var _argument3 = argument3;
var _argument5 = argument5;

if _gun == 1{
with(argument4){
if _attack_Delay <= 0 && ((_attack_Delay_2 <= _attack_Delay_max && _long_sword == 1)
|| (_attack_Delay_2 <= 0 && _gun == 1)){
//image_angle = (point_direction(x,y, argument5.x,argument5.y)-(_rot_on - _rot_scale))
check_x = EnTarget.x
check_y = EnTarget.y
check_xscale = _xscale;
check_x_pos = x;
check_y_pos = y;

_attack_Delay = _attack_Delay_max;
_attack_Delay_2 = 0;
with(MyFriend){
_attack_Delay_2 = _attack_Delay_max + _attack_Delay_max/2;
//argument0 = 0;
}
}
}
}else if _AR_gun == 0 && _SG_gun == 0 && _GU_weapon == 0{
_attack_Delay_2 = argument2;
_attack_Delay = 0;
}
