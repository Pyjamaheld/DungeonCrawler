if (hspd != 0){
    hspd += 0.2*sign(hspd)*-1;
    log("hspd = " + string(hspd), "Friction", 0);
}
if (hspd > -1 and hspd < 1){
    log("(before setting to 0) hspd = " + string(hspd), "Friction", 0);
    hspd = 0;
}

if (vspd != 0){
    vspd += 0.5*sign(vspd)*-1;
        log("vspd = " + string(hspd), "Friction", 0);
}

if (vspd > -1 and vspd < 1){
    vspd = 0;
        log("(before setting to 0) vspd = " + string(vspd), "Friction", 0);
}

