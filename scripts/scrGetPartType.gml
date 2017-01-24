//scrGetPartType(pt)    gets particle type from integer val sent from host
var pt = argument0;
switch(pt)
{
    case 0:
        return partSteam;
    break;
    case 1:
        return partSmoke;
    break;
    case 2:
        return partHeal;
    break;
    default:
        return noone;
    break;
}
