///scrSaveOptions()
if(file_exists("Options.sav")) 
{
    file_delete("Options.sav");
}

ini_open("Options.sav");

ini_write_real("save1","userMusicGain",userMusicGain);
ini_write_real("save1","userSFXGain",userSFXGain);
ini_write_real("save1","autoFire",autoFire);
ini_write_real("save1","endlessUnlocked",endlessUnlocked);
ini_write_real("save1","fullScreen",window_get_fullscreen());

ini_close();
