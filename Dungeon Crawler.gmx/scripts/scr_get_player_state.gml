///Get State of Object Player

switch(global.player_state){
    case states_player.normal: scr_player_normal_movement(); break;
    
    case states_player.attack: scr_player_attack(); break;
}
