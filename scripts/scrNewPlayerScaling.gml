///scrNewPlayerScaling(player)      
    //Adjusts player 3 and 4 stats to be in line with other players scaling
    //in the case that they weren't there for earlier levels
    
var player = argument0;

if(player >= 2)
{
    mArrowDamage[player] = max(mArrowDamage[player],min(mArrowDamage[0],mArrowDamage[1]));
    mMultiShot[player] = max(mMultiShot[player],min(mMultiShot[0],mMultiShot[1]));
    mBowSpeed[player] = max(mBowSpeed[player],min(mBowSpeed[0],mBowSpeed[1]));
    mGold[player] = max(mGold[player],round(mean(mGold[0],mGold[1])));
}
