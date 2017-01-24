///creates coin objects that explode out from dying enemy based on worth
var calc = worth;
var i = 0;
coin = noone;
while(calc-1000 >= 0)
{
    coin = instance_create(x,y,objCoin)
    coin.sprite_index = sprPlatinumCoin;
    coin.vspeed = -irandom(5);
    coin.hspeed = -2 + irandom(4);
    calc -= 1000;
    //audio_play_sound(sndCoin,0,false);
    i++;
}
while(calc-100 >= 0)
{
    coin = instance_create(x,y,objCoin)
    coin.sprite_index = sprGoldCoin;
    coin.vspeed = -irandom(5);
    coin.hspeed = -2 + irandom(4);
    calc -= 100;
    //audio_play_sound(sndCoin,0,false);
    i++;
}
while(calc-10 >= 0)
{
    coin = instance_create(x,y,objCoin)
    coin.sprite_index = sprSilverCoin;
    coin.vspeed = -irandom(5);
    coin.hspeed = -2 + irandom(4);
    calc -= 10;
    //audio_play_sound(sndCoin,0,false);
    i++;
}
while(calc-1 >= 0)
{
    coin = instance_create(x,y,objCoin)
    coin.sprite_index = sprCopperCoin;
    coin.vspeed = -irandom(5);
    coin.hspeed = -2 + irandom(4);
    calc -= 1;
    //audio_play_sound(sndCoin,0,false);
    i++;
}

