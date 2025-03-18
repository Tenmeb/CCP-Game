/// @description

draw_sprite_ext(mask_index, 0, move.drawX, move.drawY, image_xscale, image_yscale, image_angle, image_blend, .75);
draw_sprite_ext(sprite_index, image_index, move.drawX, move.drawY, xScale, image_yscale, image_angle, image_blend, image_alpha);

//Collision sparks
var _dist = point_distance(0, 0, move.againstWall.hori, move.againstWall.vert) * 4;
var _dir = point_direction(0, 0, move.againstWall.hori, move.againstWall.vert);

if(_dist == 0) exit;

//Disabled due to a bug in HTML5 runtime 2022.6.0.23
//part_particles_create(partSys, x + lengthdir_x(_dist, _dir), y + lengthdir_y(_dist, _dir), spark, 1)