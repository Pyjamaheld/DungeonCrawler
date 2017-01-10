// Check if attacking

var log_class_name = "Check Attack";
var log_level = 0;

// If Attack Key is pressed
if(action_key){
    state = states_player.attack;
    log("Set state to attack: " + string(state), log_class_name, log_level);
    attacking = true;
}

if(attacking){
    hspd = 0;
    
    //log("Image index = " + string(image_index), "Check attack", 1);
    
    if(image_index >= 4) && (image_index < 5) /*&& !attacking*/{
        log("Creating Dmg Obj", log_class_name, log_level);
        //attacking = true;
        with(instance_create(x,y,obj_damage)){
            image_xscale = other.image_xscale;
            var damage = round(random_range(min_dmg, max_dmg));
            
            with( instance_place(x, y, obj_lifeform)){
                if(!hit){
                    hit = true;
                    vspd = -10;
                    hspd = sign(x - other.x) * 4;
                    
                    image_xscale = sign(hspd);
                    
                    log("hspd = " + string(hspd), log_class_name, log_level); 
                    
                    hp -= damage;
                    
                    global.reset_hit_throwback = true;
                    
                    log("====================", log_class_name, 1);
                    log("= Damage done : " + string(damage), log_class_name, 1); 
                    log("= Obj HP : " + string(hp), log_class_name, 1);
                    log("====================", log_class_name, 1);
                }
            }
        }
    }
    
    if(scr_animation_end()){
        state = states_player.standing;
        attacking = false;
        global.reset_hit = true;
        log("Changed player state to standing", log_class_name, 1);
    }
}



