/// @description Read Input
var _input = readInput()

//Just call the spdDir function with your desired speed and direction to move and collide!
move.spdDir(maxSpeed * _input.factor, _input.dir);

//Alternatively you can control things with an xSpd or a ySpd
//move.xSpdYSpd(your x speed, your v speed)

//Collision sparks
depth = -y;
part_system_depth(partSys, depth -1);

updateSprite(_input.dir);
changeMoveSpeed();
