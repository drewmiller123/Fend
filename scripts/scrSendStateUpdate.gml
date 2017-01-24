///scrSendStateUpdate()         //sends state update from server to clients

var count = ds_list_size(socketList);

if(count > 0)
{
    buffer_seek(buffer, buffer_seek_start, 0);
    buffer_write(buffer, buffer_u8, netStateUpdate);
    buffer_write(buffer, buffer_u8, sendState);    
    
    for(i=0;i<count;i++)
    {   

        var sock = ds_list_find_value(socketList,i);
        var ip = ds_list_find_value(ipList,i);
        var port = ds_list_find_value(portList,i);

        network_send_udp(sock, ip, port, buffer, buffer_tell(buffer));   
   
    }
}
