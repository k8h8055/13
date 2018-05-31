/// WeaponSG(id,MyMaster,_xscale)
// argument1 = _image_angle;
//argument2 = _xscale
// argument3 = argument3;
var MyMasters = argument0;
var _xscale_sc = argument2;
audio_play_sound(att_SG_gun_at_0_wv,0,0);
var _image_angle = (point_direction(x,y,argument3.x,argument3.y));
var _dirs = argument2;

for(var i=0;i<5;i+=1){
it = instance_create(x+argument2*lengthdir_x(argument0.sprite_width*0.8,_image_angle),
y+argument2*lengthdir_y(argument0.sprite_width*0.8,_image_angle),O_FIRE_ATT);
it.image_angle = _image_angle+(i*5);
it._speed = 40;
it._dir = 1;
}
for(var i=0;i<5;i+=1){
it = instance_create(x+argument2*lengthdir_x(argument0.sprite_width*0.8,_image_angle),
y+argument2*lengthdir_y(argument0.sprite_width*0.8,_image_angle),O_FIRE_ATT);
it.image_angle = _image_angle-(i*5);
it._speed = 40;
it._dir = 1;
}

_xpos -= (2);
_ypos -= 1;
argument1.rot += argument2 * 60;
argument1.m_Brake = 30;
//argument1._Jump = 0;
if argument1._booster > 0{
argument1._xspd = -(argument2)*(lengthdir_x(argument0.sprite_width*0.4,_image_angle))/3;
argument1._booster = 0;
}else{
if argument1._Jump > 0
argument1._xspd += -(argument2)*(lengthdir_x(argument0.sprite_width*0.4,_image_angle))/3;
else
argument1._xspd = -(argument2)*(lengthdir_x(argument0.sprite_width*0.4,_image_angle))/3;
}
argument1._yspd = -(argument2)*lengthdir_y(argument0.sprite_width*0.4,_image_angle)/3;
