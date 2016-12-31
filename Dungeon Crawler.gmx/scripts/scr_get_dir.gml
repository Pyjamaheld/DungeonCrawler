///scr_get_dir

var log_class_name = "Get Dir";
var log_level = 0;

switch (xDirection){
    case RIGHT:
        sprite_index = spr_player_right; 
        log("Face = Right", log_class_name, log_level);
        image_speed = 0.5;
    break;
    
    case UP:
        sprite_index = spr_player_right;
        log("Face = Up", log_class_name, log_level); 
        //image_speed = 0.5;
    break;
    
    case LEFT:
        sprite_index = spr_player_left;
        log("Face = Left", log_class_name, log_level);
        image_speed = 0.5;         
    break;
}
