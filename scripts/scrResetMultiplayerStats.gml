//scrMultiplayerLoad();

day = 1;
gold = 0;
bowSpeed = baseBowSpeed;
arrowDamage = 1;
//numArchers = 1;
multiShot = 1;
for(i = 0; i < 4; i++)
{
    mGold[i] = 0;
    mArrowDamage[i] = 1;
    mBowSpeed[i] = baseBowSpeed;
    mMultiShot[i] = 1;
    mFireMult[i] = .5;
    mFrostMult[i] = .5;
    mLightningMult[i] = .5;
}
fireUpgrade = true;
frostUpgrade = true;
lightningUpgrade = true;
fireDamageMult = .5;
frostDamageMult = .5;
lightningDamageMult = .5;
currentArrow = objArrow;
endlessMode = true;

scrMultiplayerSave();


