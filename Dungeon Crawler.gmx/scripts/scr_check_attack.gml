// Check if attacking
// If Attack Key is pressed
if(action_key){
    state = states_player.attack;
    log("Set state to attack: " + string(state), "Check attack", 1);
    attacking = true;
    
    /*sprite_index = spr_player_attack_sword;
    //image_index = 0;
    image_speed = 0.5;*/
}

if(attacking){
    //log("Attacking", "Check Attack", 1);
    hspd = 0;
    
    //log("Image index = " + string(image_index), "Check attack", 1);
    
    if(image_index >= 4) && (image_index < 5) /*&& !attacking*/{
        log("Creating Dmg Obj", "Check Attack", 1);
        //attacking = true;
        with(instance_create(x,y,obj_damage)){
            image_xscale = other.image_xscale;
            var damage = round(random_range(min_dmg, max_dmg));
            
            with( instance_place(x, y, obj_lifeform)){
                if(!hit){
                    hit = true;
                    vspd = -10;
                    hspd = sign(x - other.x) * 4;
                    //image_xscale = sign(x_speed);
                    //image_speed = 0.1;
                    image_xscale = sign(hspd);
                    
                    log("hspd = " + string(hspd), "Enemy", 1); 
                    
                    hp -= damage;
                    log("Damage done = " + string(damage), "Enemy", 1); 
                    log("Obj HP = " + string(hp), "Enemy", 1);
                }
            }
        }
    }
    
    if(scr_animation_end()){
        state = states_player.standing;
        attacking = false;
        global.reset_hit = true;
        log("Changed player state to standing", "Test", 1);
    }
}



