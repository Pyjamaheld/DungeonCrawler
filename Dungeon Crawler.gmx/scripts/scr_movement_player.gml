// Movement player
scr_input();

var log_class_name = "Movement Player";
var log_level = 0;

xDirection = right_key - left_key;
//log("xDirection = " + string(xDirection), log_class_name);

if(y_speed < 10){
    y_speed += grav;
}

//Move Player
if (xDirection == -1){
    /*var max_speed_left = max_speed * -1;
    
    if(x_speed > max_speed_left){
        x_speed -= acceleration_speed;  
        log("Left clicked, new X Position = " + string(x), log_class_name);
    }*/
    
    if(scr_check_if_in_air()){
        image_speed = 0;
    }
    
    x_speed = xDirection * max_speed;
    
    face_dir = xDirection;
    
    scr_get_dir();
}

if (xDirection == 1){
    /*if(x_speed < max_speed){
        x_speed += acceleration_speed;  
        log("Right clicked, new X Position = " + string(x), log_class_name);
    }*/
    
    if(scr_check_if_in_air()){
        image_speed = 0;
    }
    
    x_speed = xDirection * max_speed;
    
    face_dir = xDirection;
    
    scr_get_dir();
}

if(xDirection == 0){
    x_speed = 0;
    //log("No Movement, reset xspeed.", log_class_name);
    image_speed = 0;
    scr_get_idle_dir();
}

log("Jump key = " + string(jump_key), "Test", 0);

if(jump_key == 1){

    log("Y pos = " + string(y), log_class_name, 1);
    
    if(place_meeting(x, y + 1, obj_collision)){
        jumped = true;
        alarm[0] = 15;
        
        log("Jumped! Alarm set to = " + string(alarm[0]), "Test", 1);
    }
    
    xDirection = 2;
    scr_get_dir();
}

//if(jump_held_key && y_speed <= max_jump_speed){
if(jump_held_key == 1 && jumped == true){    

    if(y_speed > -max_jump_speed){
    
        y_speed -= (jump_speed / 3) + (alarm[0] / 30);
        //y_speed -= alarm[0] / 8;
        
        log("Incresed y_speed to = " + string(y_speed) + " / " + string(-max_jump_speed), log_class_name, 1);
        log("Curent alarm timer: " + string(alarm[0]), log_class_name, 1);
    }
   
}

/*if(y_speed < 0 && jump_held_key != 1){
    y_speed = -jump_speed / 4;
}*/

log("Jump held key = " + string(jump_held_key), "Test", 0);

scr_collision();
scr_move();
