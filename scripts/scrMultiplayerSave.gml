///scrSaveGame()
if(hosting)
{
    if(file_exists("Multi.sav")) 
    {
        file_delete("Multi.sav");
    }
    
    ini_open("Multi.sav");
    
    ini_write_real("save1","day",day);
    ini_write_real("save1","gold",gold);
    ini_write_real("save1","mGold[0]",mGold[0]);
    ini_write_real("save1","mGold[1]",mGold[1]);
    ini_write_real("save1","mGold[2]",mGold[2]);
    ini_write_real("save1","mGold[3]",mGold[3]);
    ini_write_real("save1","bowSpeed",bowSpeed);
    ini_write_real("save1","mBowSpeed[0]",mBowSpeed[0]);
    ini_write_real("save1","mBowSpeed[1]",mBowSpeed[1]);
    ini_write_real("save1","mBowSpeed[2]",mBowSpeed[2]);
    ini_write_real("save1","mBowSpeed[3]",mBowSpeed[3]);
    ini_write_real("save1","arrowDamage",arrowDamage);
    ini_write_real("save1","mArrowDamage[0]",mArrowDamage[0]);
    ini_write_real("save1","mArrowDamage[1]",mArrowDamage[1]);
    ini_write_real("save1","mArrowDamage[2]",mArrowDamage[2]);
    ini_write_real("save1","mArrowDamage[3]",mArrowDamage[3]);
    //ini_write_real("save1","numArchers",numArchers);
    ini_write_real("save1","multiShot",multiShot);
    ini_write_real("save1","mMultiShot[0]",mMultiShot[0]);
    ini_write_real("save1","mMultiShot[1]",mMultiShot[1]);
    ini_write_real("save1","mMultiShot[2]",mMultiShot[2]);
    ini_write_real("save1","mMultiShot[3]",mMultiShot[3]);
    ini_write_real("save1","fireUpgrade",fireUpgrade);
    ini_write_real("save1","frostUpgrade",frostUpgrade);
    ini_write_real("save1","lightningUpgrade",lightningUpgrade);
    ini_write_real("save1","fireDamageMult",fireDamageMult);
    ini_write_real("save1","mFireMult[0]",mFireMult[0]);
    ini_write_real("save1","mFireMult[1]",mFireMult[1]);
    ini_write_real("save1","mFireMult[2]",mFireMult[2]);
    ini_write_real("save1","mFireMult[3]",mFireMult[3]);
    ini_write_real("save1","frostDamageMult",frostDamageMult);
    ini_write_real("save1","mFrostMult[0]",mFrostMult[0]);
    ini_write_real("save1","mFrostMult[1]",mFrostMult[1]);
    ini_write_real("save1","mFrostMult[2]",mFrostMult[2]);
    ini_write_real("save1","mFrostMult[3]",mFrostMult[3]);
    ini_write_real("save1","lightningDamageMult",lightningDamageMult);
    ini_write_real("save1","mLightningMult[0]",mLightningMult[0]);
    ini_write_real("save1","mLightningMult[1]",mLightningMult[1]);
    ini_write_real("save1","mLightningMult[2]",mLightningMult[2]);
    ini_write_real("save1","mLightningMult[3]",mLightningMult[3]);
    //ini_write_real("save1","endlessUnlocked",endlessUnlocked);
    ini_write_real("save1","endlessMode",endlessMode);
    
    ini_close();
}