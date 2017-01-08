// If Attack Key is pressed

x_speed = 0;
//y_speed = 0;

sprite_index = spr_player_attack_sword;
//image_index = 0;
image_speed = 0.5;

if(image_index >= 4) && (image_index < 5) /*&& !attacking*/{
    
    //attacking = true;
    with(instance_create(x,y,obj_damage)){
        image_xscale = other.image_xscale;
        var damage = round(random_range(min_dmg, max_dmg));
        
        with( instance_place(x, y, obj_lifeform)){
            if(!hit){
                hit = true;
                y_speed = -10;
                x_speed = sign(x - other.x) * 4;
                //image_xscale = sign(x_speed);
                //image_speed = 0.1;
                
                log("x_speed = " + string(x_speed), "Enemy", 1); 
                
                hp -= damage;
                log("Damage done = " + string(damage), "Enemy", 1); 
                log("Obj HP = " + string(hp), "Enemy", 1);
            }
        }
    }
}
    
if(scr_animation_end()){
    global.player_state = states_player.normal;
    global.reset_hit = true;
    log("Changed player state to normal", "Test", 1);
}




