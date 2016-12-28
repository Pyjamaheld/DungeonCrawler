// Movement player

scr_input();

//log("Left = " + string(left_key), "Movement Player");
//log("Right = " + string(right_key), "Movement Player");

xDirection = right_key - left_key;

//Move Player
if (xDirection == -1){

    x -= playerSpeed;  
    log("Left clicked, new Position X = " + string(x), "Movement Player");
}

if (xDirection == 1){

    x += playerSpeed;
    log("Right clicked, new Position X = " + string(x), "Movement Player");
}

