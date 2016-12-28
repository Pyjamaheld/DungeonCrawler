// Movement player

scr_input();

var move_left = left_key;
var move_right = right_key;

log("Left = " + string(left_key), "Movement Player");
log("Right = " + string(right_key), "Movement Player");

//Move Player
if (move_left == 0){

    log("Position X = " + string(x), "Movement Player");
    x -= playerSpeed; 
    
    log("Left clicked, new Position X = " + string(x), "Movement Player");
}
if(move_right == 0){

    log("Position X = " + string(x), "Movement Player");
    x += playerSpeed; 
    
    log("Right clicked, new Position X = " + string(x), "Movement Player");
}

