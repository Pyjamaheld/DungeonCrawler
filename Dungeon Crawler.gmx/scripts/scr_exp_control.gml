// EXP Progression

if (global.player_exp >= global.max_exp){
    global.player_level++;
    
    var dmg_gain = global.max_dmg + round(1.16 * global.player_level);
    global.max_dmg += dmg_gain;
    global.min_dmg = round(global.min_dmg + dmg_gain / 2);
    
    global.max_exp = global.player_exp + round(global.max_exp * 1.36);
}


