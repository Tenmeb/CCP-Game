/// @description METHOD DEFINITIONS

readDpad = function() {
	var _h =  gamepad_button_check(0,gp_padr) - gamepad_button_check(0,gp_padl);
	var _v = gamepad_button_check(0,gp_padd) - gamepad_button_check(0,gp_padu);
	var _dist = point_distance(0,0,_h,_v);
	return {h: _h, v: _v, dist: _dist, pressed: _dist > 0}
}

readAnalog = function() {
	//Check analog stick
	var _h = gamepad_axis_value(0,gp_axislh);
	var _v = gamepad_axis_value(0,gp_axislv);
	var _dist = point_distance(0,0,_h,_v)
	return {h: _h, v: _v, dist: _dist, pressed: _dist > analogDeadzone}
}

readArrows = function() {
	var _h = keyboard_check(vk_right) - keyboard_check(vk_left);
	var _v = keyboard_check(vk_down) - keyboard_check(vk_up);
	var _dist = point_distance(0,0,_h,_v);
	return {h: _h, v: _v, dist: _dist, pressed: _dist > 0}
}

readInput = function() {
	var _input = {factor: 0, h: 0, v: 0}
	
	var _dpad = readDpad();
	var _analog = readAnalog();
	var _arrow = readArrows();

	if(_arrow.pressed) {
	  controlMode = MODE_KEYBOARD;
	  _input.factor = 1;
	  _input.h = _arrow.h;
	  _input.v = _arrow.v;
	}
	
	if(_dpad.pressed) {
	  controlMode = MODE_DPAD;
	  _input.factor = 1;
	  _input.h = _dpad.h;
	  _input.v = _dpad.v;
	}
	
	if(_analog.pressed){
	  controlMode = MODE_ANALOG;
	  _input.factor = min(_analog.dist, 1);
	  _input.h = _analog.h;
	  _input.v = _analog.v;
	}
	
	_input.dir = point_distance(0, 0, _input.h, _input.v) > 0 
							 ? point_direction(0, 0, _input.h, _input.v) 
							 : NO_DIRECTION;
               
	return _input;
}

updateSprite = function(_dir){
	if(_dir == NO_DIRECTION){
		image_speed = 0;
	  image_index = 0;
		return;
	}
	
	image_speed = 1;
	xScale = 1;
	switch(round_n(_dir, 45) % 360) {
	  case WEST: sprite_index = sprWest; break; 
	  case SOUTH_WEST: sprite_index = sprWest; break;
	  case NORTH_WEST: sprite_index = sprWest; break;
	  case EAST: sprite_index = sprEast; break; 
	  case SOUTH_EAST: sprite_index = sprEast; break;
	  case NORTH_EAST: sprite_index = sprEast; break;
	  case NORTH: sprite_index = sprNorth; break;
	  case SOUTH: sprite_index = sprSouth; break;
	}
}

changeMoveSpeed = function(){
	//Change move_speed
	maxSpeed = clamp(maxSpeed + (mouse_wheel_up() - mouse_wheel_down()) * .25, .25, 5);
}