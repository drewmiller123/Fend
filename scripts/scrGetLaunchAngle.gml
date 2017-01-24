///scrGetLaunchAngle(x1,y1,x2,y2,v0,g)
///returns launch angle

//var returnAngle = image_angle;
var dx = argument2 - argument0;
var dy = argument1 - argument3;
var v0 = argument4;
var g = argument5;

var maxSteps = 500;
var steps = 0;

var square = (sqr(v0) - 2*g*(dy+g/2*(sqr(dx)/sqr(v0))));
//var numerator = sqrt(v0-(sqr(v0)-2*g*(dy+g/2(dx*dx/sqr(v0)))));
//var midCalc = sqrt(v0-(vo*vo-2*g*(dy+g/2(dx*dx/v0/v0))))/(g*dx/v0);

if(square < 0)
{
    while(square < 0)
    {
        dx--;
        dy--;
        square = (sqr(v0)-2*g*(dy+g/2*(sqr(dx)/sqr(v0))));
        steps++;
        if(steps > maxSteps)
        {
         return 0;
        }
    }
    //return 180;
}

returnAngle = arctan((v0-(sqrt(sqr(v0)-2*g*(dy+g/2*(sqr(dx)/sqr(v0))))))/(g*dx/v0));

returnAngle = returnAngle*180/pi;

return returnAngle;
