///scr_get_dir

var log_class_name = "Get Dir";
var log_level = 1;

switch (xDirection){
    case RIGHT:
        sprite_index = spr_player_right; 
        log("Face = Right", log_class_name, 0);
        image_speed = 0.3;
    break;
    
    case JUMP_RIGHT:
        sprite_index = spr_player_jump_right;
        log("Face = Jump Right", log_class_name, log_level); 
        image_speed = 0.2;
    break;
    
    case JUMP_LEFT:
        sprite_index = spr_player_jump_left;
        log("Face = Jump Left", log_class_name, log_level); 
        image_speed = 0.2;
    break;
    
    case LEFT:
        sprite_index = spr_player_left;
        log("Face = Left", log_class_name, 0);
        image_speed = 0.3;         
    break;
}
