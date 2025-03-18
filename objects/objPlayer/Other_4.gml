/// @description Snap Camera
controlMode = MODE_KEYBOARD;
var _x = clamp(x - VIEW_W / 2, 0, room_width - VIEW_W),
    _y = clamp(y - VIEW_H / 2, 0, room_height - VIEW_H);

camera_set_view_pos(VIEW, _x, _y);