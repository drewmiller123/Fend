///scrDrawArrowPath(x0,y0,speed,direction,gravity,time)

var x0 = argument0;
var y0 = argument1;
var spd = argument2;
var dir = argument3;
var g = argument4;
var time = argument5;

var y2 = 0;

var vx0 = lengthdir_x(spd,dir);
var vy0 = lengthdir_y(spd,dir);

var tImpact = (sqrt(sqr(vy0)-2*(y0-988)*g)-vy0)/g;

//draw_sprite(sprNope,0,x0 + tImpact*vx0,988);

//draw_sprite_ext(sprAimingArrow,1,x,y,1,1,image_angle,c_white,1);

for(i = 1; !place_meeting(x,y2,objArrowCollision); i++)
{
    var x1 = x0 + vx0*(i-1);
    var x2 = x0 + vx0*i;
    var y1 = y0 + (vy0*(i-1) + g*sqr(i-1)/2);
    var y2 = y0 + (vy0*i + g*sqr(i)/2);
    draw_line_color(x1,y1,x2,y2,c_white,c_white);
}
