// Movement player
scr_get_input();

var log_class_name = "Movement Player";
var log_level = 0;

//States

//Attack
if (action_key){
    global.player_state = states_player.attack;
}

xDirection = right_key - left_key;

if(y_speed < 10){
    y_speed += grav;
}

//Move Player left
if (xDirection == -1){
    x_speed = xDirection * max_speed;
    face_dir = xDirection; 
    
    // Get Player Face Direction --> Set Sprite Index
    
    if(jumped){
        xDirection = -2;
    }
}

//Move player right
if (xDirection == 1){
    x_speed = xDirection * max_speed;
    face_dir = xDirection;
    
    // Get Player Face Direction --> Set Sprite Index
    
    if(jumped){
        xDirection = 2;
    }
}

// If no Movement
if(xDirection == 0){
    x_speed = 0;
    //log("No Movement, reset xspeed.", log_class_name);
    image_speed = 0;
    scr_get_idle_dir();
}

// If Jump Key 
if(place_meeting(x, y + 2, obj_collision)){
    if(jump_key == 1){
        
        jumped = true;
        alarm[0] = 15;

        log("Jumped! Alarm set to = " + string(alarm[0]), "Test", 1);
    }
}

// Holding Jump Key
if(jump_held_key == 1 && jumped == true){    

    if(y_speed > -max_jump_speed){
        y_speed -= (jump_speed / 3) + (alarm[0] / 30);
        
        log("Incresed y_speed to = " + string(y_speed) + " / " + string(-max_jump_speed), log_class_name, 1);
        log("Curent alarm timer: " + string(alarm[0]), log_class_name, 1);
    } 
}

scr_get_dir();
