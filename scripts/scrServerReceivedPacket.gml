///scrServerReceivedPacket(buffer, socket)
var buff = argument[0];
var socket = argument[1];
var ip = argument[2];
var port = argument[3];
var msgid = buffer_read(buff, buffer_u8);

switch(msgid)
{
    case netPing:
        var time = buffer_read(buff, buffer_u32);
        buffer_seek(buffer, buffer_seek_start,0);
        buffer_write(buffer, buffer_u8,netPing);
        buffer_write(buffer, buffer_u32,time);
        network_send_udp(socket, ip, port, buffer, buffer_tell(buffer));
        
        var player = ds_list_find_index(ipList,ip)+1;
        mTimeout[player] = 300;
    break;
    case netKeyboard:
        var player = ds_list_find_index(ipList,ip)+1;
        //buffer_seek(buffer, buffer_seek_start,0);
        var key = buffer_read(buff, buffer_s16);
        //var pressed = buffer_read(buffer, buffer_bool);
        if(key == ord("Q"))
        {
            currArrow[player] = objArrow;
            buffer_seek(buffer,buffer_seek_start,0);
            buffer_write(buffer,buffer_u8,netKeyboard);
            buffer_write(buffer,buffer_u8,0);
        }
        else if(key == ord("W") && fireUpgrade)
        {
            currArrow[player] = objFireArrow;
            buffer_seek(buffer,buffer_seek_start,0);
            buffer_write(buffer,buffer_u8,netKeyboard);
            buffer_write(buffer,buffer_u8,1);
        }
        else if(key == ord("E") && (frostUpgrade || frostFireUpgrade))
        {
            if(frostFireUpgrade)
            {
                currArrow[player] = objFrostFireArrow;
            }
            else
            {
                currArrow[player] = objIceArrow;
            }
            buffer_seek(buffer,buffer_seek_start,0);
            buffer_write(buffer,buffer_u8,netKeyboard);
            buffer_write(buffer,buffer_u8,2);
        }
        else if(key == ord("R") && (lightningUpgrade || frostFireLightningUpgrade))
        {
            if(frostFireLightningUpgrade)
            {
                currArrow[player] = objFrostFireLightningArrow;
            }
            else
            {
                currArrow[player] = objLightningArrow;
            }
            buffer_seek(buffer,buffer_seek_start,0);
            buffer_write(buffer,buffer_u8,netKeyboard);
            buffer_write(buffer,buffer_u8,3);
        }
        else
        {
            break;
        }
        network_send_udp(socket, ip, port, buffer, buffer_tell(buffer));
    break;
    case netMouse:
        var player = ds_list_find_index(ipList,ip)+1;
        //buffer_seek(buffer, buffer_seek_start,0);
        mx[player] = buffer_read(buff, buffer_u32);
        my[player] = buffer_read(buff, buffer_u32);
        mClicked[player] = buffer_read(buff, buffer_bool);
        displayx = mx[player];
        displayy = my[player];
        displayClicked = mClicked[player];
    break;
    case netReadyUpdate:
        var player = ds_list_find_index(ipList,ip)+1;
        mReady[player] = buffer_read(buff, buffer_bool);
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,netReadyAck);
        buffer_write(buffer,buffer_bool,mReady[player]);
        network_send_udp(socket, ip, port, buffer, buffer_tell(buffer));
        scrSendLobbyStats();
        scrMultiplayerSave();
    break;
    /*case netStateUpdate:
        var player = ds_list_find_index(ipList,ip)+1;
        mStateAck[player] = true;
    break;*/
    case netStatUpdate:
        var player = ds_list_find_index(ipList,ip)+1;
        mGold[player] = buffer_read(buff, buffer_u32);
        mArrowDamage[player] = buffer_read(buff, buffer_u16);
        mMultiShot[player] = buffer_read(buff, buffer_u8);   
        mBowSpeed[player] = buffer_read(buff, buffer_u16)/1000;
        mFireMult[player] = buffer_read(buff, buffer_u16)/100;
        mFrostMult[player] = buffer_read(buff, buffer_u16)/100;
        mLightningMult[player] = buffer_read(buff, buffer_u16)/100;
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,netStatAck);
        network_send_udp(socket, ip, port, buffer, buffer_tell(buffer));
        scrSendLobbyStats();
        scrMultiplayerSave();
    break;
    case netInitialRequest:
        var player = ds_list_find_index(ipList,ip)+1;
        scrNewPlayerScaling(player);
        buffer_seek(buffer,buffer_seek_start,0);
        buffer_write(buffer,buffer_u8,netInitialRequest);
        buffer_write(buffer,buffer_u8,player);
        buffer_write(buffer,buffer_u16,day);
        buffer_write(buffer,buffer_u32,mGold[player]);
        buffer_write(buffer,buffer_u16,mArrowDamage[player]);
        buffer_write(buffer,buffer_u8,mMultiShot[player]);
        buffer_write(buffer,buffer_u16,mBowSpeed[player]*1000);
        buffer_write(buffer,buffer_u16,mFireMult[player]*100);
        buffer_write(buffer,buffer_u16,mFrostMult[player]*100);
        buffer_write(buffer,buffer_u16,mLightningMult[player]*100);
        network_send_udp(socket, ip, port, buffer, buffer_tell(buffer));
        scrSendLobbyStats();
    break;
}
