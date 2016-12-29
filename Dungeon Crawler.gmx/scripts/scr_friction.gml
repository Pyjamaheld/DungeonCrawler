if !(x_speed == 0){
    x_speed += 0.1*sign(x_speed)*-1;
}
if (x_speed > -1 and x_speed < 1){
    x_speed = 0;
}

if !(y_speed == 0){
    y_speed += 0.1*sign(y_speed)*-1;
}
if (y_speed > -1 and y_speed < 1){
    y_speed = 0;
}

