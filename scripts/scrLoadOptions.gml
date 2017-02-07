if(file_exists("Options.sav"))
{
    ini_open("Options.sav")
    
    userMusicGain = ini_read_real("save1","userMusicGain",userMusicGain);
    userSFXGain = ini_read_real("save1","userSFXGain",userSFXGain);
    var fullScreen = ini_read_real("save1","fullScreen", window_get_fullscreen());
    
    window_set_fullscreen(fullScreen);
    
    ini_close();
}
