/// OnFloater(_yspd,id)

if (instance_place(x, y + sign(argument0) + argument1.sprite_height/2 , oFloater)) {
// Move nearest wave
with (instance_place(x, y + sign(argument0) + argument1.sprite_height/2 , oFloater)) {
var spd = other._yspd; // Player v
liquid_apply_force_x(instance_nearest_bbox(oWater), x + sprite_width * 1, -spd * 0.25);
}
}
