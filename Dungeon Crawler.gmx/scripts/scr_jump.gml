//Jump Mechanics


var gravitation = scr_gravity();


if(gravitation == 1){
    if place_free(x, y - y_speed){
        y_speed -= jump_speed;
        log("jump pressed , y_speed = " + string(y_speed), "Movement Player");
    } 
}

if(gravitation == -1){
    if place_free(x, y - y_speed){
        y_speed -= jump_speed * -1;
        log("jump pressed , y_speed = " + string(y_speed), "Movement Player");
    }
}
