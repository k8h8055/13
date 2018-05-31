/// WeaponNGun(id,MyMaster,_xscale)
//argument3 = O_Player_target
var _xxscale = argument2;
var _att_dir = (point_direction(x,y, argument3.x,argument3.y)-(_rot_on - _rot_scale));
audio_play_sound(att_gun_at_0_wv,0,0);
is = instance_create(x+lengthdir_x(argument0.sprite_width*1.2,_att_dir)+argument1._xspd*0,
y+lengthdir_y(argument0.sprite_width*1.2,_att_dir),O_FIRE_ATT_M);
is._dir = _xscale;
is.image_angle = _att_dir;//point_direction(x,y, argument3.x,argument3.y);


