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
myPortrait			= spr_portrait_player;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "You";

myPortraitTalk		= spr_portrait_examplechar_mouth;
myPortraitTalk_x	= 26;
myPortraitTalk_y	= 44;
myPortraitIdle		= spr_portrait_examplechar_idle;