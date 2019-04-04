// particle system
partFire_sys = part_system_create();
part_system_depth(partFire_sys, 1);


// particle
partFire = part_type_create();
part_type_shape(partFire, pt_shape_flare);
part_type_scale(partFire, 1, 1);
part_type_size(partFire, 0.5, 0.7, -0.005, 0);
part_type_color3(partFire, c_blue, c_orange, c_red);
part_type_alpha2(partFire, 0.75, 0.25);
part_type_speed(partFire, 0.1, 0.5, 0, 0);
part_type_direction(partFire, 0, 359, 0, 0);
part_type_life(partFire, room_speed * 1, room_speed * 2);
part_type_blend(partFire, 1);

// particle emitter
partFire_emit = part_emitter_create(partFire_sys);
part_emitter_region(partFire_sys, partFire_emit, x - 25, x + 25, y - 25, y + 25, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(partFire_sys, partFire_emit, partFire, 1);

alarm[0] = 2 * room_speed;
