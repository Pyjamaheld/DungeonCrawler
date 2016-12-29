///scr_collision
if (place_meeting (x + sign(x_speed), y, obj_collision)){
    x_speed = 0;
}

if (place_meeting (x, y + sign(y_speed), obj_collision)){
    y_speed = 0;
}
