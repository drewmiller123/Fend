///scrSendLobbyStats()         //sends stats from server to clients to display in lobby


var count = ds_list_size(objServer.socketList);

if(count > 0)
{
    buffer_seek(objServer.buffer, buffer_seek_start, 0);
    buffer_write(objServer.buffer, buffer_u8, netLobbyStats);
    buffer_write(objServer.buffer, buffer_u8, objServer.numClients);
    buffer_write(objServer.buffer, buffer_u32, mGold[0]);
    buffer_write(objServer.buffer, buffer_u32, mGold[1]);
    buffer_write(objServer.buffer, buffer_u32, mGold[2]);
    buffer_write(objServer.buffer, buffer_u32, mGold[3]);
    buffer_write(objServer.buffer, buffer_u16, mArrowDamage[0]);
    buffer_write(objServer.buffer, buffer_u16, mArrowDamage[1]);
    buffer_write(objServer.buffer, buffer_u16, mArrowDamage[2]);
    buffer_write(objServer.buffer, buffer_u16, mArrowDamage[3]);
    buffer_write(objServer.buffer, buffer_u8, mMultiShot[0]);
    buffer_write(objServer.buffer, buffer_u8, mMultiShot[1]);
    buffer_write(objServer.buffer, buffer_u8, mMultiShot[2]);
    buffer_write(objServer.buffer, buffer_u8, mMultiShot[3]);
    buffer_write(objServer.buffer, buffer_u16, mFireMult[0]*100);
    buffer_write(objServer.buffer, buffer_u16, mFireMult[1]*100);
    buffer_write(objServer.buffer, buffer_u16, mFireMult[2]*100);
    buffer_write(objServer.buffer, buffer_u16, mFireMult[3]*100);
    buffer_write(objServer.buffer, buffer_u16, mFrostMult[0]*100);
    buffer_write(objServer.buffer, buffer_u16, mFrostMult[1]*100);
    buffer_write(objServer.buffer, buffer_u16, mFrostMult[2]*100);
    buffer_write(objServer.buffer, buffer_u16, mFrostMult[3]*100);
    buffer_write(objServer.buffer, buffer_u16, mLightningMult[0]*100);
    buffer_write(objServer.buffer, buffer_u16, mLightningMult[1]*100);
    buffer_write(objServer.buffer, buffer_u16, mLightningMult[2]*100);
    buffer_write(objServer.buffer, buffer_u16, mLightningMult[3]*100);
    buffer_write(objServer.buffer, buffer_u16, mBowSpeed[0]*1000);
    buffer_write(objServer.buffer, buffer_u16, mBowSpeed[1]*1000);
    buffer_write(objServer.buffer, buffer_u16, mBowSpeed[2]*1000);
    buffer_write(objServer.buffer, buffer_u16, mBowSpeed[3]*1000);
    
    
    for(i=0;i<count;i++)
    {   

        var sock = ds_list_find_value(objServer.socketList,i);
        var ip = ds_list_find_value(objServer.ipList,i);
        var port = ds_list_find_value(objServer.portList,i);

        network_send_udp(sock, ip, port, objServer.buffer, buffer_tell(objServer.buffer));   
   
    }
}

