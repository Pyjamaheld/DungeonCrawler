// Set player Sprites

log_level = 0;

if(jumping){
    sprite_index = spr_player_jump;
    
    image_speed = 0.1;
    log("Set sprite to fall", "Set Sprite", log_level);
}

if(falling){
    sprite_index = spr_player_jump;
    
    image_speed = 0.1;
    image_index = 8;
    log("Set sprite to jump", "Set Sprite", log_level);
}

if(!jumping && !falling){

    switch(state){
        case states_player.standing:
            sprite_index = spr_player_stand;
            image_speed = 0;
            //log("Set sprite to stand", "Set Sprite", log_level);
        break;
        
        case states_player.walking:
            sprite_index = spr_player_move;
            image_speed = 0.35;
            log("Set sprite to walk", "Set Sprite", log_level);
        break;
        
        case states_player.running:
            sprite_index = spr_player_move;
            image_speed = 0.5;
            log("Set sprite to run", "Set Sprite", log_level);
        break;
        
        case states_player.ducking:
            sprite_index = spr_player_stand;
            image_speed = 0;
            log("Set sprite to duck", "Set Sprite", log_level);
        break;
        
        case states_player.attack:
            sprite_index = spr_player_attack_sword;
            //image_index = 0;
            image_speed = 0.5;
            
            log("Set sprite to attack", "Set Sprite", log_level);
        break;
    }
}

switch (dir){
    case LEFT:
        image_xscale = -1;
    break;

    case RIGHT:
        image_xscale = 1;
    break;    
}

