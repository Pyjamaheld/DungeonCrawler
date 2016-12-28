///scr_collision
if place_meeting(x + x_speed, y, obj_collision){
    if !(place_meeting (x + scr_reduce(x_speed), y, obj_collision)){
        x_speed += scr_reduce(x_speed);
    } else {
        x_speed = 0;
    }
}
    
if place_meeting(x, y + y_speed, obj_collision){
    if !(place_meeting (x, y + scr_reduce(y_speed), obj_collision)){
        y_speed += scr_reduce(y_speed);
    } else {
        y_speed = 0;
    }
}
