// determine if standing
if(attacking){
    state = states_player.attack;

}else if((!left_key && !right_key) || (left_key && right_key)) && (!jumping && !falling){
    
    //TODO Implement ducking?
    
    state = states_player.standing;
    
    //slow down movement if no keys are pressed
    if( dir == LEFT){
        if(hspd < 0){
            hspd += fric;
        }else{
            hspd = 0;
        }
    }
    
    if( dir == RIGHT){
        if(hspd > 0){
            hspd -= fric;
        }else{
            hspd = 0;
        }
    }
}
