///scr_get_idle_dir

var log_class_name = "Get Idle Dir";

switch (face_dir){
    case RIGHT:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_right_idle;
        log("Face = Right", log_class_name);
    break;
    
    case UP:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_right;
        log("Face = Up", log_class_name);
    break;
    
    case LEFT:
        //sprite_index = spr_player_right_idle; 
        sprite_index = spr_player_left_idle;
        log("Face = Left", log_class_name);
    break;
}
