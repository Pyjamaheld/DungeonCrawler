// Chase Player

var log_class_name = "Enemy Chase";
var log_level = 0;

dir = sign(obj_player_new.x - x);

if(dir == -1){
    image_xscale = -1;
}else{
    image_xscale = 1;
}

if(!global.reset_hit_throwback && !global.reset_player_hit){
    hspd = dir * 1.5;
}

if(distance_to_object(obj_player_new) > 100){
    state = states_enemy.idle;
}

log("Throwback(before clock) = " + string(global.reset_hit_throwback), log_class_name, log_level);

if (timer_throwback <= 0 && global.reset_hit_throwback) {
    global.reset_hit_throwback = false;
    log("Throwback reset to: " + string(global.reset_hit_throwback), log_class_name, log_level);
    
    timer_throwback = 45;
} else {
  if(global.reset_hit_throwback){
    timer_throwback -= 1;
    log("Throwback timer : " + string(timer_throwback), log_class_name, log_level);
  }
}


/// Enemy Collision

var log_class_name = "Enemy Collision Player";
var log_level = 1;

if(place_meeting(x + sign(hspd), y, obj_player_new)){
    var enemy_dmg = dmg;
    var enemy_x = x;
    
    //log("Player colliding", log_class_name, log_level);

    with(obj_player_new){
    
        log("Player Hit = " + string(player_hit), log_class_name, log_level);
    
        if (!player_hit){
            player_hit = true;
            global.reset_player_hit = true;
            hspd = sign(x - enemy_x) * 3;
            vspd = -4;
            
            hp -= enemy_dmg;
            
            alarm[1] = 30;
        }
    }
    
    if(global.reset_player_hit){
        hspd = 0;
    }
}
