// Check if on the ground

var log_class_name = "Check Wall Jump";
var log_level = 1;

//if(jump_key && sliding && !jumping){

    // Wall Jump Right
    if (place_meeting(x+4, y, obj_collision) && !place_meeting(x, y+1, obj_collision) /*&& sliding&& !right_key*/ ){
        
        if(!jumping && jump_key){
            jumping = true;
            vspd -= jspd;
            alarm[0] = 15;
            //vspd = sliding_wall_spd;
            log("Jumping from right wall", log_class_name, log_level);            
        }

    }
    
    // Wall Jump Left
    if (place_meeting(x-4, y, obj_collision) && !place_meeting(x, y+1, obj_collision) /*&& sliding && !left_key*/){
        
        if(!jumping && jump_key){
            jumping = true;
            vspd = -jspd;
            alarm[0] = 15;
            //vspd = sliding_wall_spd;
            log("Jumping from left wall", log_class_name, log_level);
        }
    }
//}

/*// Wall Slide Right
if (place_meeting(x + 1, y + 1, obj_collision) && right_key){
    sliding = false;

    log("Sliding not posible on right wall", log_class_name, log_level);
}

// Wall Slide Right
if (place_meeting(x - 1, y + 1, obj_collision) && left_key){
    sliding = false;

    log("Sliding not posible on right wall", log_class_name, log_level);
}*/
