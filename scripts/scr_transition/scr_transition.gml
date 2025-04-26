global.roomTarget = -1;
global.midTransition = false;

function TransitionStart(_roomTarget, _typeOut, _typeIn)
{
    if (!global.midTransition)
    {
        global.midTransition = true;
        global.roomTarget = _roomTarget;
        global.inTransitionType = _typeIn; // store for later use
		 show_debug_message("🎯 TransitionStart: " + string(_typeOut) + " > " + string(_typeIn));
        TransitionPlaceSequence(_typeOut); // only OUT here
        return true;
    }
    else return false;
}

//Places the sequences in the room
function TransitionPlaceSequence(_type){
	if (layer_exists("transition")) layer_destroy("transition")
	var _lay = layer_create(-9999,"transition")
	layer_sequence_create(_lay,0,0,_type);	
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom(){
	show_debug_message("TransitionChangeRoom() fired");
	room_goto(global.roomTarget);
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished() {
	show_debug_message("	TransitionFinished() fired");
    layer_sequence_destroy(self.elementID);
    global.midTransition = false;
    global.roomTarget = -1;
    global.future_x = -1;
    global.future_y = -1;
    global.should_spawn_player = false;
}