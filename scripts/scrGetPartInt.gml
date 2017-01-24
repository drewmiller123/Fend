//scrGetPartInt(ptype)    gets particle integer to send to clients based on partType
var ptype = argument0;
switch(ptype)
{
    case partSteam:
        return 0;
    break;
    case partSmoke:
        return 1;
    break;
    case partHeal:
        return 2;
    break;
    default:
        return 0;
    break;
}
