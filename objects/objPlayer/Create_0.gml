/// @description
analogDeadzone = .25;
controlMode = MODE_KEYBOARD
maxSpeed = 1.25;
xScale = 1;
instance_create_depth(x, y, 0, objReflection)

// Status variables
reputation = 50;
reputation_max = 100;
energy = 100;
energy_max = 100;
money = 0;

event_user(0); //Declare Methods
event_user(1); //Define Particles

//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//See Child Objects for how to setup the movement system
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!