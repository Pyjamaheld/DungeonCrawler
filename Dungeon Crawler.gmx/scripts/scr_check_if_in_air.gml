///Check if in air

var class_name = "Check if in Air";
var log_level = 0;

if( place_meeting(x, y + 1, obj_collision)){
    log("Is not in Air", class_name, log_level);
    return false;
}else{
    log("Is in Air", class_name, log_level);
    return true;
}
