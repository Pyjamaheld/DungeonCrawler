// Check if on the ground

var log_class_name = "Check Ground";
var log_level = 0;

if( place_meeting(x, y + 1, obj_collision)){
    //Touching ground
    
    if(!player_hit){
        vspd = 0;
        falling = false;
    }
    
    //If want to jump
    if( jump_key ){
        log("Jump Pressed", log_class_name, 1);
        jumping = true;
        alarm[0] = 15;
    }
}

// Holding Jump Key
if(jump_held_key == 1 && jumping){    

    if(vspd > -max_jheight){
        vspd -= (jspd / 3) + (alarm[0] / 30);
        
        log("Incresed vspd to = " + string(vspd) + " / " + string(-max_jheight), log_class_name, 1);
        log("Curent alarm timer: " + string(alarm[0]), log_class_name, 1);
    } 
}

//In the air
if(vspd < terminalVelocity){
    vspd += grav;
}
