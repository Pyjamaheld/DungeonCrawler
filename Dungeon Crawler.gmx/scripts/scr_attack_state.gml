///scr_attack_state
//atm not working because no attack sprites
image_speed = .5;
switch (sprite_index){
    case spr_player_down:
        sprite_index = spr_player_attack_down;
        break;
    
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;
    
    case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;
    
    case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
    }
var xx = x;
var yy = y;

switch (sprite_index){
    case spr_player_attack_down:
        xx = x;
        yy = y+12;
        break;
    
    case spr_player_attack_up:
        xx = x;
        yy = y-10;
        break;
    
    case spr_player_attack_left:
        xx = x-10;
        yy = y;
        break;
    
    case spr_player_attack_right:
        xx = x+10;
        yy = y;
        break;
    }

//create a damage object
if (image_index >= 3 and attacked == false){
    var damage = instance_create (xx, yy, obj_damage);
    damage.damage = obj_player_stats.attack;
    damage.creator = id;
    attacked = true;
    }
