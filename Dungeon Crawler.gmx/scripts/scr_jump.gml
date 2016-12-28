//Jump Mechanics

if place_free(x, y - y_speed){
    gravity = 0.5;
    y_speed -= jump_speed;
    
    log("jump pressed , y_speed = " + string(y_speed), "Movement Player");
}else{
    gravity = 0;
}    
