///scrUpgradeSave()
if(file_exists("Upgrade.sav")) 
{
    file_delete("Upgrade.sav");
}

ini_open("Upgrade.sav");

ini_write_real("save1","gold",gold);
ini_write_real("save1","bowSpeed",bowSpeed);
ini_write_real("save1","arrowDamage",arrowDamage);
ini_write_real("save1","multiShot",multiShot);

ini_close();
