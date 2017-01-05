// If Attack Key is pressed

/*if(sprite_index == spr_player_left || sprite_index == spr_player_left_idle){
    var damage_spr = instance_create(x-10, y, obj_damage);
}else{
    var damage_spr = instance_create(x, y, obj_damage);
}*/

sprite_index = spr_player_attack_sword;
//image_index = 0;
image_speed = 0.25;

var damage_spr = instance_create(x,y,obj_damage);

damage_spr.creator = id;

if(x_speed > 0 ){
    damage_spr.image_xscale = 1;
}

if (x_speed < 0 ) {
    damage_spr.image_xscale = -1;
}



