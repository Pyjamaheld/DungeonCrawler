//Jump Mechanics

player_orientation = xDirection;

//holding left
if(xDirection == -1){
    if place_free(x, y - y_speed){
        gravity = 0.5
        y_speed -= jump_speed;
    }    
}

//holding right
if(xDirection == 1){
    if place_free(x, y + y_speed){
        gravity = 0.5
        y_speed += jump_speed;
    }    
}

//holding nothing
if(xDirection == 0){
    if place_free(x, y + y_speed){
        gravity = 0.5
        y_speed += jump_speed;
    }    
}
