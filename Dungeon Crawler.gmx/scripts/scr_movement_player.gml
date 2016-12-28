// Movement player
scr_input();

xDirection = right_key - left_key;
//log("xDirection = " + string(xDirection), "Movement Player");

//Move Player
if (xDirection == -1){
var max_speed_left = max_speed * -1;
   if(x_speed > max_speed_left){
        x_speed -= acceleration_speed;  
        log("Left clicked, new X Position = " + string(x), "Movement Player");
   }
}

if (xDirection == 1){
    if(x_speed < max_speed){
        x_speed += acceleration_speed;  
        log("Right clicked, new X Position = " + string(x), "Movement Player");
    }
}

if(xDirection == 0){
    x_speed = 0;
    //log("No Movement, reset xspeed.", "Movement Player");
}

if(jump_key == 1){

log("Y pos = " + string(y), "");
    if not place_free(x,y - y_speed){
        log("jump pressed but space not free, y_speed = " + string(y_speed), "Movement Player");
        y_speed = 0;
    } else {
        scr_jump();
    }
}
scr_collision();
scr_move();
