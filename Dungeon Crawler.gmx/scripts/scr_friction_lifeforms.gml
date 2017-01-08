if (x_speed != 0){
    x_speed += 0.2*sign(x_speed)*-1;
    log("Xspeed = " + string(x_speed), "Friction", 0);
}
if (x_speed > -1 and x_speed < 1){
    log("(before setting to 0) Xspeed = " + string(x_speed), "Friction", 0);
    x_speed = 0;
}

if (y_speed != 0){
    y_speed += 0.5*sign(y_speed)*-1;
}

if (y_speed > -1 and y_speed < 1){
    y_speed = 0;
}

