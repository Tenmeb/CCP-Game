/// @description 
event_inherited();


// Custom Tile Based Place meeting function 
var _tileMeeting = function(_x, _y){
    return tile_meeting(_x, _y, "Collision")
}

// Enables movement and collision and stores all 
// functionality and variables under the "move" variable
move = use_tdmc(_tileMeeting)

//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= -1;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "You";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;

// Status variables
reputation = 50;
reputation_max = 100;
energy = 100;
energy_max = 100;
money = 0;

// Rest of player initialization