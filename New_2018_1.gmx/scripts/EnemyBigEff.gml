ps1 = part_system_create();
pt1 = part_type_create();
part_type_shape(pt1,1);
part_type_sprite(pt1,S_effect_1,0,1,1);
part_type_color3(pt1,c_white,c_white,c_white);
part_type_size(pt1,0.5,1.5,0,0);
part_type_alpha3(pt1,1,0.1,0);
part_type_speed(pt1,2,8,0,0);
part_type_life(pt1,10,15);
part_type_direction(pt1,0,360,0,0);
part_type_orientation(pt1,0,360,0,0,1);
part_type_scale(pt1,1,1);
part_type_blend(pt1,1);
part_system_depth(ps1,-500)
ps1 =part_emitter_create(ps1);
part_emitter_region(ps1,ps1,x,x,y,y,ps_shape_line,ps_distr_gaussian);
part_emitter_burst(ps1,ps1,pt1,30);
