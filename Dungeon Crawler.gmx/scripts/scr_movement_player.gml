// Movement player
scr_input();

var log_class_name = "Movement Player";

xDirection = right_key - left_key;
//log("xDirection = " + string(xDirection), log_class_name);

if(y_speed < max_jump_speed){
    y_speed += grav;
    //log("New Y_speed after +grav = " + string(y_speed), log_class_name);
    //log("Max Jump Speed = " + string(max_jump_speed), log_class_name);
}

//Move Player
if (xDirection == -1){
    /*var max_speed_left = max_speed * -1;
    
    if(x_speed > max_speed_left){
        x_speed -= acceleration_speed;  
        log("Left clicked, new X Position = " + string(x), log_class_name);
    }*/
    
    x_speed = xDirection * max_speed;
    
    face_dir = xDirection;
    
    scr_get_dir();
}

if (xDirection == 1){
    /*if(x_speed < max_speed){
        x_speed += acceleration_speed;  
        log("Right clicked, new X Position = " + string(x), log_class_name);
    }*/
    
    x_speed = xDirection * max_speed;
    
    face_dir = xDirection;
    
    scr_get_dir();
}

if(xDirection == 0){
    x_speed = 0;
    //log("No Movement, reset xspeed.", log_class_name);
    
    scr_get_idle_dir();
}

if(jump_key == 1){
    log("Y pos = " + string(y), log_class_name);
    
    if(place_meeting(x, y + 1, obj_collision)){
        y_speed = jump_key * -jump_speed;
    }
    
    xDirection = 2;
    
    scr_get_dir();
}

scr_collision();
scr_move();
