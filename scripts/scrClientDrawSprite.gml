///scrClientDrawSprite(xx,yy,spIndex,iIndex,angle,xscale,yscale,alpha)
//Client draws sprite with proper palette swap if needed

var xx = argument0;
var yy = argument1;
var spIndex = argument2;
var iIndex = argument3;
var angle = argument4;
var xscale = argument5;
var yscale = argument6;
var alpha = argument7;

var pIndex = ((day - 1) div 10) mod 3;//gets proper palette index based on current day
var pSprite = noone;

switch(spIndex)
{
    case sprPeasant: case sprPeasantAttack: case sprSwordPickup: case sprPickup: case sprPeasantDeath: case sprPeasantCarnage:
        pSprite = sprFootPal;
    break;
    case sprFootSoldier: case sprFootSoldierAttack: case sprFootSoldierDeath: case sprFootSoldierCarnage:
        pSprite = sprFootPal;
    break;
    case sprTroll: case sprTrollWalking: case sprTrollPushing: case sprDyingTroll: case sprTrollCarnage:
        pSprite = sprTrollPal;
    break;
    case sprShieldHolder: case sprShieldAttack: case sprShieldHolderDeath: case sprShieldHolderCarnage:
        pSprite = sprMagePal;
    break;
    case sprDragonFlying: case sprDragonFiring: case sprDragonDying: case sprDragonCarnage:
        pSprite = sprDragonPal;
    break;
    case sprBlueMage: case sprBlueMageCast: case sprBlueMageAttack: case sprBlueMageDeath: case sprBlueMageCarnage:
        pSprite = sprMagePal;
    break;
    case sprGreenMage: case sprGreenMageCast: case sprGreenMageAttack: case sprGreenMageDeath: case sprGreenMageCarnage:
        pSprite = sprMagePal;
    break;
    case sprIceGiantWalk: case sprIceGiantAttack: case sprIceDropMinion: case sprIceGiantHead: case sprIceGiantHeadAttack: case sprIceGiantCarnage: case sprIceGiantDeath:
        pSprite = sprIcePal;
    break;
    case sprSnowManJump: case sprSnowBall: case sprSnowBallExplode: case sprSnowManThrow: case sprSnowManDying: case sprSnowManPunch: case sprSnowManCarnage:
        pSprite = sprSnowManPal;
    break;
    case sprZeusIdle: case sprZeusAttack: case sprZeusSmashed: case sprZeusCarnage:
        pSprite = sprZeusPal;
    break;
    default:
        pSprite = noone;
    break;
}

if(pSprite == noone)
{
    draw_sprite_ext(spIndex,iIndex,xx,yy,xscale,yscale,angle,c_white,alpha);
}
else
{
    pal_swap_set(pSprite,pIndex,false);
    draw_sprite_ext(spIndex,iIndex,xx,yy,xscale,yscale,angle,c_white,alpha);
    pal_swap_reset();
}
