
if(sprite_index == spr_player_left || sprite_index == spr_player_left_idle){
    var damage_spr = instance_create(x-10, y, obj_damage);
}else{
    var damage_spr = instance_create(x, y, obj_damage);
}

damage_spr.creator = id;
