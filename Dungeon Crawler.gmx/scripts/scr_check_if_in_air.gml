///Check if in air

var class_name = "Check if in Air";

if( place_meeting(x, y + 1, obj_collision)){
    log("Is not in Air", class_name);
    return false;
}else{
    log("Is in Air", class_name);
    return true;
}
