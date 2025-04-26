//---You can update variables here!---//
reset_dialogue_defaults();


switch(choice_variable){
	case -1:
	#region First Dialogue
		//Line 0
		var i = 0;
		myText[i]		= "You can run a script after any line of dialogue! Let's make an emote to the left.";
		mySpeaker[i]	= id;
		myScripts[i]	= [create_instance_layer, 170,120,"Instances",obj_emote];
		
		//Line 1
		i++;
		myText[i]		= "You can even have it depend on player choice. Which object should I make?";
		mySpeaker[i]	= id;
		
		//Line 2
		i++;
		myText[i]		= ["An emote", "Another you!"];
		myTypes[i]		= 1;
		mySpeaker[i]	= objPlayer;
		myScripts[i]	= [[create_instance_layer, 170,120,"Instances",obj_emote], [create_instance_layer, 170,120,"Instances",obj_examplechar]];
		myNextLine[i]	= [0,0];
		
		//Line 3
		i++;
		myText[i]		= "Pretty cool, right? Now, let's get back to our conversation.";
		mySpeaker[i]	= id;
		
		//Line 4
		i++;
		myText[i]		= "Looky here, green hood.";
		myEffects[i]	= [13,1, 18,0];
		mySpeaker[i]	= id;
		myTextCol[i]	= [13, c_lime, 18, c_white];

		//Line 5
		i++;
		myText[i]		= "We both know blue is the best colour.";
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [14, c_aqua, 18, c_white];

		//Line 6
		i++;
		myText[i]		= "Say it... or else.";
		myTextSpeed[i]	= [1,0.5, 10,0.1];
		myEmotion[i]	= 0;
		myEmote[i]		= 4;
		mySpeaker[i]	= id;
		myTextCol[i]	= [11, c_red, 18, c_white];

		//Line 7
		i++;
		myText[i]		= ["(sarcastically) Blue is the best colour.", "Green is the best colour."];
		myTypes[i]		= 1;
		myNextLine[i]	= [8,9];
		myScripts[i]	= [[change_variable, id, "choice_variable", "blue"], [change_variable, id, "choice_variable", "green"]];
		mySpeaker[i]	= objPlayer;

		//Line 8
		i++;
		myText[i]		= "Exactly! Thank you!";
		myEmotion[i]	= 0;
		myEmote[i]		= 0;
		myNextLine[i]	= -1;
		mySpeaker[i]	= id;

		//Line 9
		i++;
		myText[i]		= "Nooooooooooooooooooooooo!";
		myTextSpeed[i]	= [1,1, 6,0.3, 10,1];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		#endregion
	break;
	
	case "green":
	#region If you chose green
		var i = 0;
		//Line 0
		myText[i]		= "I can't believe you like green better...";
		myTextSpeed[i]	= [1, 0.3];
		myEmotion[i]	= 2;
		myEmote[i]		= 9;
		mySpeaker[i]	= id;
		myTextCol[i]	= [26,c_lime, 31,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	
	break;
	
	case "blue":
	#region If you chose blue
		var i = 0;
		//Line 0
		myText[i]		= "Hey there, fellow blue lover!";
		myTextSpeed[i]	= [1,1, 10,0.5];
		myEmotion[i]	= 1;
		myEmote[i]		= 0;
		mySpeaker[i]	= id;
		myTextCol[i]	= [19,c_aqua, 23,c_white];
		
		//uncommenting this will make the first conversation begin again
		//choice_variable	= -1;
	#endregion
	break;
}

//---Kitchen Dialogue Logic---//

// Assume kitchen_dialogue_state is set before this script runs by the interaction trigger
switch(kitchen_dialogue_state) {
    case "start":
    #region Start - Entering Kitchen
        var i = 0;
        // Line 0: Student A intro
        myText[i]       = "This is the basement kitchen, the communal kitchen only for Minervans.";
        mySpeaker[i]    = obj_studentA; // Use actual object name

        // Line 1: Student A
        i++;
        myText[i]       = "There are stoves, fridges, and pantry.";
        mySpeaker[i]    = obj_studentA;

        // Line 2: Student A
        i++;
        myText[i]       = "Cookers like pans are available, you are free to use them if there is no name.";
        mySpeaker[i]    = obj_studentA;

        // Line 3: Student A
        i++;
        myText[i]       = "Basically, you have everything you needed here for cooking.";
        mySpeaker[i]    = obj_studentA;

        // Line 4: Student A
        i++;
        myText[i]       = "Enjoying your cooking!";
        mySpeaker[i]    = obj_studentA;

        // ...existing code...
    #endregion
    break;

    // ...existing code...

    case "wash_later":
    #region Choice 1-2: Wash Later - Narration & Student B Arrives
        // ...existing code...
        // Line 3: Student B
        i++;
        myText[i]       = "Who used my pot?!";
        mySpeaker[i]    = obj_studentB; // Use actual object name

        // Line 4: Student B
        i++;
        myText[i]       = "Was it you?";
        mySpeaker[i]    = obj_studentB;
        myNextLine[i]   = "ask_confess_choice"; // Jump to confess/deny choice
    #endregion
    break;

    // ...existing code...

    case "confess":
    #region Choice 1-2-1: Confess
        // ...existing code...
        // Line 1: Student B
        i++;
        myText[i]       = "*The student crosses his arms, visibly annoyed.* Next time, ask first. There are people using others' pots and leaving them dirty, so I couldn't fully trust you.";
        mySpeaker[i]    = obj_studentB;

        // ...existing code...
    #endregion
    break;

    case "deny":
    #region Choice 1-2-2: Deny
        // ...existing code...
        // Line 1: Student B
        i++;
        myText[i]       = "*Student B narrows his eyes.* Really? No one else has been in here.";
        mySpeaker[i]    = obj_studentB;

        // ...existing code...
        // Line 3: Student A
        i++;
        myText[i]       = "Hey! Did you end up cooking? I forgot to mention—ensure you have the permission of owners if you want to use named cookers, because I just remember that a lot of unnamed cookers are missing.";
        mySpeaker[i]    = obj_studentA;

        // Line 4: Student B
        i++;
        myText[i]       = "*Student B shifts his attention back to you.* Then which pot did you use?";
        mySpeaker[i]    = obj_studentB;

        // ...existing code...
        // Line 6: Student B & Consequence
        i++;
        myText[i]       = "You're lying. *He walks to the sink, points at the pot, and shakes his head in disappointment.*";
        mySpeaker[i]    = obj_studentB;
         // ...existing code...
    #endregion
    break;

    // ...existing code...

    case "wait_success":
    #region Choice 2 Outcome: Success after waiting
        // ...existing code...
        // Line 2: Student B
        i++;
        myText[i]       = "You must be new to here! Looking for a pot? You can use mine!";
        mySpeaker[i]    = obj_studentB;

        // ...existing code...
        // Line 4: Student B
        i++;
        myText[i]       = "Wanna cook together? I’ve got extra mushrooms.";
        mySpeaker[i]    = obj_studentB;

        // ...existing code...
    #endregion
    break;

    // ...existing code...
}