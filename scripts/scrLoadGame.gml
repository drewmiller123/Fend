if(file_exists("Save.sav"))
{
    ini_open("Save.sav")
    
    day = ini_read_real("save1","day",day);
    gold = ini_read_real("save1","gold",gold);
    bowSpeed = ini_read_real("save1","bowSpeed",bowSpeed);
    arrowDamage = ini_read_real("save1","arrowDamage",arrowDamage);
    numArchers = ini_read_real("save1","numArchers",numArchers);
    multiShot = ini_read_real("save1","multiShot",multiShot);
    fireUpgrade = ini_read_real("save1","fireUpgrade",fireUpgrade);
    frostUpgrade = ini_read_real("save1","frostUpgrade",frostUpgrade);
    lightningUpgrade = ini_read_real("save1","lightningUpgrade",lightningUpgrade);
    fireDamageMult = ini_read_real("save1","fireDamageMult",fireDamageMult);
    frostDamageMult = ini_read_real("save1","frostDamageMult",frostDamageMult);
    lightningDamageMult = ini_read_real("save1","lightningDamageMult",lightningDamageMult);
    endlessUnlocked = ini_read_real("save1","endlessUnlocked",endlessUnlocked);
    endlessMode = ini_read_real("save1","endlessMode",endlessMode);
    
    ini_close();
}
