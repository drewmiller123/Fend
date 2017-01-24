///scrPlayMusic(sound)      //plays sound and sends it to clients if hosting
var snd = argument0;

if(!audio_is_playing(snd))
{
    audio_stop_sound(sndShopSong);
    audio_stop_sound(sndBattlefieldSong);
    audio_stop_sound(sndSnowSong);
    audio_play_sound(snd, 0, true);
    
    if(hosting)
    {
        with(objServer)
        {
            var count = ds_list_size(socketList);
    
            if(count > 0)
            {
                buffer_seek(buffer,buffer_seek_start,0);
                buffer_write(buffer,buffer_u8,netMusic);
                buffer_write(buffer,buffer_string,audio_get_name(snd)); 
                
                for(i=0;i<count;i++)
                {          
                    var sock = ds_list_find_value(socketList,i);
                    var ip = ds_list_find_value(ipList,i);
                    var port = ds_list_find_value(portList,i);       
                    network_send_udp(sock, ip, port, buffer, buffer_tell(buffer));   
               
                }
            }
        }
    }
}
