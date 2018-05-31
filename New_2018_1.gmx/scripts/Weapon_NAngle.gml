/// Weapon_NAngle(bool,_xscale,_rot_scale,_rot_on,_rot,angle_speed)
var _argument0 = argument0;
var _argument2 = argument2;

if argument1 == 1 && (argument2 == argument3 + (argument3 + 180)){
_argument2 = 0;
_rot_scale = 0;
image_angle = (point_direction(argument0.x,argument0.y,argument0.x + argument1*1,argument0.y)-(argument3 - _argument2))
}
if argument1 == -1 && (argument2 == 0){
_argument2 = argument3 + (argument3 + 180);

_rot_scale = argument3 + (argument3 + 180);
image_angle = (point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2))
}

if image_angle - (point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2) - argument4) >= 270 && 0 > ((point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2) - argument4) - image_angle)/argument5{
image_angle -= 360;
}
else{
if (point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2) - argument4) - image_angle >= 270 && 0 < ((point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2) - argument4) - image_angle)/argument5{
image_angle += 360;
}
}
image_angle += ((point_direction(argument0.x,argument0.y, argument0.x + argument1*1,argument0.y)-(argument3 - _argument2) - argument4) - image_angle)/argument5;

return _rot_scale;
