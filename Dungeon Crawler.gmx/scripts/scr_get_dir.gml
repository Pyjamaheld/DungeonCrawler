///scr_get_dir

var log_class_name = "Get Dir";

switch (xDirection){
    case RIGHT:
        sprite_index = spr_player_right; 
        log("Face = Right", log_class_name);
        image_speed = 0.5;
    break;
    
    case UP:
        sprite_index = spr_player_right;
        log("Face = Up", log_class_name); 
        //image_speed = 0.5;
    break;
    
    case LEFT:
        sprite_index = spr_player_left;
        log("Face = Left", log_class_name);
        image_speed = 0.5;         
    break;
}
