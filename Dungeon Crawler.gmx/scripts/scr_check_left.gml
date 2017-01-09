// if moving left

if(left_key){
    dir = LEFT;
    var maxspeed = 0;
    
    if(sprint_key){
        state = states_player.running;
        maxspeed = -runningMaxSpd;
        acc = runningAcc;
    }else{
        state = states_player.walking;
        maxspeed = -walkingMaxSpd;
        acc = walkingAcc;
    }
    
    
    if(hspd > maxspeed){
        hspd -= acc;    
    }else{
        //sprint key released, slow down
        if(hspd < maxspeed){
            hspd += acc * 2;
        }else{
            hspd = maxspeed;
        }
    }
}
