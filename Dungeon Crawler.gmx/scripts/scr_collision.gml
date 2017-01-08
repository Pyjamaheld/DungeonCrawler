//Horizontal Collision
if (place_meeting(x+x_speed,y,obj_collision))
{
    while(!place_meeting(x+sign(x_speed),y,obj_collision))
    {
        x += sign(x_speed);
    }
    x_speed = 0;
}
 
//Vertical Collision
if (place_meeting(x,y+y_speed,obj_collision))
{
    while(!place_meeting(x,y+sign(y_speed),obj_collision))
    {
        y += sign(y_speed);
        
        log("Falling  yspeed = " + string(y_speed), "Collision", 0);
    }
    y_speed = 0;
}
