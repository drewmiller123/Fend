///scrSaveGame()
if(file_exists("Save.sav")) 
{
    file_delete("Save.sav");
}

ini_open("Save.sav");

ini_write_real("save1","day",day);
ini_write_real("save1","gold",gold);
ini_write_real("save1","bowSpeed",bowSpeed);
ini_write_real("save1","arrowDamage",arrowDamage);
ini_write_real("save1","numArchers",numArchers);
ini_write_real("save1","multiShot",multiShot);
ini_write_real("save1","fireUpgrade",fireUpgrade);
ini_write_real("save1","frostUpgrade",frostUpgrade);
ini_write_real("save1","lightningUpgrade",lightningUpgrade);
ini_write_real("save1","fireDamageMult",fireDamageMult);
ini_write_real("save1","frostDamageMult",frostDamageMult);
ini_write_real("save1","lightningDamageMult",lightningDamageMult);
ini_write_real("save1","endlessUnlocked",endlessUnlocked);
ini_write_real("save1","endlessMode",endlessMode);

ini_close();
