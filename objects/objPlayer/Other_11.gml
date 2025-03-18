/// @description PARTICLES

partSys = part_system_create()

spark = part_type_create();
part_type_shape(spark, pt_shape_line);
part_type_size(spark, 0.05, 0.10, 0, 0);
part_type_scale(spark, .5, 1);
part_type_orientation(spark, 0, 0, 0, 0, 1);
part_type_color3(spark, 65535, 4235519, 255);
part_type_alpha3(spark, 1, 1, 0);
part_type_blend(spark, !os_browser);
part_type_life(spark, 10, 20);
part_type_speed(spark, .5, 1.0, 0, 0);
part_type_direction(spark, -45, 225, 0, 0);
part_type_gravity(spark, 0.05, 270);