///scr_get_idle_dir

var log_class_name = "Get Idle Dir";
var log_level = 0;

switch (face_dir){
    case RIGHT:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_right_idle;
        log("Face = Right", log_class_name, log_level);
    break;
    
/*    case UP:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_right;
        log("Face = Up", log_class_name, log_level);
    break;*/
    
    case LEFT:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_left_idle;
        log("Face = Left", log_class_name, log_level);
    break;
}
