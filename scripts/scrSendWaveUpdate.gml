///scrSendWaveUpdate()         //sends wave number update from server to clients


var count = ds_list_size(objServer.socketList);

if(count > 0)
{
    buffer_seek(objServer.buffer, buffer_seek_start, 0);
    buffer_write(objServer.buffer, buffer_u8, netWaveUpdate);
    buffer_write(objServer.buffer, buffer_u8, currentWave);
    buffer_write(objServer.buffer, buffer_u8, numWaves);    
    
    for(i=0;i<count;i++)
    {   

        var sock = ds_list_find_value(objServer.socketList,i);
        var ip = ds_list_find_value(objServer.ipList,i);
        var port = ds_list_find_value(objServer.portList,i);

        network_send_udp(sock, ip, port, objServer.buffer, buffer_tell(objServer.buffer));   
   
    }
}

