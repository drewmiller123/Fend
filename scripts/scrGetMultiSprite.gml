///scrGetMultiSprite(multiShot)
//returns sprite based on multiShot

var ms = argument0;

if(ms >= 3)
{
    return sprMultiShot3;
}
else if(ms == 2)
{
    return sprMultiShot2;
}
else
{
    return sprMultiShot1;
}
