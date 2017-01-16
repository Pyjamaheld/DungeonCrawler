// Check if on the ground

var log_class_name = "Check Wall Slide";
var log_level = 0;

// Wall Slide Right
if (place_meeting(x+1, y, obj_collision) && !place_meeting(x, y+1, obj_collision) && right_key){
    sliding = true;
    vspd = sliding_wall_spd;
    log("Sliding from right wall", log_class_name, log_level);
}else{
    //alarm[2] = 15;
    sliding = false;
}

// Wall Slide Left
if (place_meeting(x-1, y, obj_collision) && !place_meeting(x, y+1, obj_collision) && left_key){
    sliding = true;
    vspd = sliding_wall_spd;
    log("Sliding from left wall", log_class_name, log_level);
}else{
    //alarm[2] = 15;
    sliding = false;
}
