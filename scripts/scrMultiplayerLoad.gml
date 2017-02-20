if(file_exists("Multi.sav"))
{
    ini_open("Multi.sav")
    
    day = ini_read_real("save1","day",day);
    gold = ini_read_real("save1","gold",gold);
    mGold[0] = ini_read_real("save1","mGold[0]",mGold[0]);
    mGold[1] = ini_read_real("save1","mGold[1]",mGold[1]);
    mGold[2] = ini_read_real("save1","mGold[2]",mGold[2]);
    mGold[3] = ini_read_real("save1","mGold[3]",mGold[3]);
    bowSpeed = ini_read_real("save1","bowSpeed",bowSpeed);
    mBowSpeed[0] = ini_read_real("save1","mBowSpeed[0]",mBowSpeed[0]);
    mBowSpeed[1] = ini_read_real("save1","mBowSpeed[1]",mBowSpeed[1]);
    mBowSpeed[2] = ini_read_real("save1","mBowSpeed[2]",mBowSpeed[2]);
    mBowSpeed[3] = ini_read_real("save1","mBowSpeed[3]",mBowSpeed[3]);
    arrowDamage = ini_read_real("save1","arrowDamage",arrowDamage);
    mArrowDamage[0] = ini_read_real("save1","mArrowDamage[0]",mArrowDamage[0]);
    mArrowDamage[1] = ini_read_real("save1","mArrowDamage[1]",mArrowDamage[1]);
    mArrowDamage[2] = ini_read_real("save1","mArrowDamage[2]",mArrowDamage[2]);
    mArrowDamage[3] = ini_read_real("save1","mArrowDamage[3]",mArrowDamage[3]);
    //numArchers = ini_read_real("save1","numArchers",numArchers);
    multiShot = ini_read_real("save1","multiShot",multiShot);
    mMultiShot[0] = ini_read_real("save1","mMultiShot[0]",mMultiShot[0]);
    mMultiShot[1] = ini_read_real("save1","mMultiShot[1]",mMultiShot[1]);
    mMultiShot[2] = ini_read_real("save1","mMultiShot[2]",mMultiShot[2]);
    mMultiShot[3] = ini_read_real("save1","mMultiShot[3]",mMultiShot[3]);
    fireUpgrade = ini_read_real("save1","fireUpgrade",fireUpgrade);
    frostUpgrade = ini_read_real("save1","frostUpgrade",frostUpgrade);
    lightningUpgrade = ini_read_real("save1","lightningUpgrade",lightningUpgrade);
    fireDamageMult = ini_read_real("save1","fireDamageMult",fireDamageMult);
    mFireMult[0] = ini_read_real("save1","mFireMult[0]",mFireMult[0]);
    mFireMult[1] = ini_read_real("save1","mFireMult[1]",mFireMult[1]);
    mFireMult[2] = ini_read_real("save1","mFireMult[2]",mFireMult[2]);
    mFireMult[3] = ini_read_real("save1","mFireMult[3]",mFireMult[3]);
    frostDamageMult = ini_read_real("save1","frostDamageMult",frostDamageMult);
    mFrostMult[0] = ini_read_real("save1","mFrostMult[0]",mFrostMult[0]);
    mFrostMult[1] = ini_read_real("save1","mFrostMult[1]",mFrostMult[1]);
    mFrostMult[2] = ini_read_real("save1","mFrostMult[2]",mFrostMult[2]);
    mFrostMult[3] = ini_read_real("save1","mFrostMult[3]",mFrostMult[3]);
    lightningDamageMult = ini_read_real("save1","lightningDamageMult",lightningDamageMult);
    mLightningMult[0] = ini_read_real("save1","mLightningMult[0]",mLightningMult[0]);
    mLightningMult[1] = ini_read_real("save1","mLightningMult[1]",mLightningMult[1]);
    mLightningMult[2] = ini_read_real("save1","mLightningMult[2]",mLightningMult[2]);
    mLightningMult[3] = ini_read_real("save1","mLightningMult[3]",mLightningMult[3]);
    //endlessUnlocked = ini_read_real("save1","endlessUnlocked",endlessUnlocked);
    endlessMode = ini_read_real("save1","endlessMode",endlessMode);
    
    ini_close();
}
else
{
    scrResetMultiplayerStats();
}
