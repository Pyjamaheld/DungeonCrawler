// if jumping
if(jumping){
    // Still gaining altitude
    if(vspd < 0){
        jumping = true;     
        log("Jumping true", "Check jump", 0); 
    }else{
        // we are falling
        falling = true; 
        log("Falling true", "Check jump", 0); 
    }
}
