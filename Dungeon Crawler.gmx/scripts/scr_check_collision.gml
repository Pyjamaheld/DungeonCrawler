//Horizontal Collision
if (place_meeting(x+hspd,y,obj_collision))
{
    while(!place_meeting(x+sign(hspd),y,obj_collision))
    {
        x += sign(hspd);
    }
    hspd = 0;
}

// set horizontal position
x += hspd;
 
//Vertical Collision
if (place_meeting(x,y+vspd,obj_collision))
{
    while(!place_meeting(x,y+sign(vspd),obj_collision))
    {
        y += sign(vspd);
        
        log("Falling  yspeed = " + string(vspd), "Collision", 0);
    }
    vspd = 0;
}

// set horizontal position
y += vspd;
