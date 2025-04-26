if (variable_global_exists("inTransitionType")) {
    TransitionPlaceSequence(global.inTransitionType);
}

if global.should_spawn_player == true{
    instance_create_layer(global.future_x, global.future_y, "Instances", obj_character);
    global.should_spawn_player = false;
}