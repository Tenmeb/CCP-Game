//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "This is the basement kitchen, the communal kitchen only for Minervans.";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 0,32,"Instances",obj_emote];
		
		//Line 1
		i++;
		myText[i]		= "There are stoves, fridges, and pantry";
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= "Cookers like pans are available, you are free to use them if there is no name.";
		mySpeaker[i]	= id;
		
		i++;
		myText[i]		= "Basically, you have everything you need for cooking.";
		mySpeaker[i]	= id;		
		
		i++;
		myText[i]		= "Enjoying your cooking session!";
		mySpeaker[i]	= id;	
		
		i++;
		myText[i]		= "You feel really hungry and your stomach is calling for food urgently.";
		myTextSpeed[i]	= [1, 0.3];
		mySpeaker[i]	= objPlayer;
		myScripts[i]	= [change_variable, id, "choice_variable", "1"];
	
		#endregion
	break;
	
	case 1:
	#region End Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "Why is he standing still and staring at nowhere?";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 0,32,"Instances",obj_emote];

		#endregion
	break;
}