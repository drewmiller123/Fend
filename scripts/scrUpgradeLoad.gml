if(file_exists("Upgrade.sav"))
{
    ini_open("Upgrade.sav")
    
    gold = ini_read_real("save1","gold",gold);
    bowSpeed = ini_read_real("save1","bowSpeed",bowSpeed);
    arrowDamage = ini_read_real("save1","arrowDamage",arrowDamage);
    multiShot = ini_read_real("save1","multiShot",multiShot);

    
    ini_close();
}

