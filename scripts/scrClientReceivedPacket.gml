///scrClientReceivedPacket(buffer)
var buff = argument[0];
buffer_seek(buff, buffer_seek_start, 0);
var msgid = buffer_read(buff, buffer_u8);

switch(msgid)
{
    case netPing:
        var time = buffer_read(buff, buffer_u32);
        ping = current_time - time;
        serverTimeout = 300;
    break;
    case netKeyboard:
        //opponentSelection = buffer_read(buff,buffer_u32);
        currArrow = buffer_read(buff, buffer_u8);
    break;
    case netMouse:
        //objGameControl.opponentReady = buffer_read(buff,buffer_u32);
    break;
    case netDraw:
        //buffer_seek(buff, buffer_seek_start, 1);
        sprites = buffer_read(buff, buffer_u16 );
        
        ds_list_clear(allsprites);
        for(var i=0;i<sprites;i++)
        {
            var xx = buffer_read(buff,buffer_s16);
            var yy = buffer_read(buff,buffer_s16);
            var spIndex = buffer_read(buff,buffer_s16);
            var iIndex = buffer_read(buff,buffer_s16);
            var angle = buffer_read(buff,buffer_s16);
            var xscale = buffer_read(buff,buffer_s16);
            var yscale = buffer_read(buff,buffer_s16);
            var alpha = buffer_read(buff,buffer_s16);
            ds_list_add(allsprites, xx);//buffer_read(buff,buffer_s16) );           //x
            ds_list_add(allsprites, yy);//buffer_read(buff,buffer_s16) );           //y
            ds_list_add(allsprites, spIndex);//buffer_read(buff,buffer_s16) );      //sprite_index
            ds_list_add(allsprites, iIndex);//buffer_read(buff,buffer_s16) );       //image_index
            ds_list_add(allsprites, angle);//buffer_read(buff,buffer_s16) );        //image_angle
            ds_list_add(allsprites, xscale);//buffer_read(buff,buffer_s16) );       //image_xscale
            ds_list_add(allsprites, yscale);//buffer_read(buff,buffer_s16) );       //image_yscale
            ds_list_add(allsprites, alpha);//buffer_read(buff,buffer_s16) );        //image_alpha
        }  
    break;
    case netPlayerDraw:
        //buffer_seek(buff, buffer_seek_start, 1);
        numPlayerSprites = buffer_read(buff, buffer_u16 );
        
        ds_list_clear(playerSprites);
        for(var i=0;i<numPlayerSprites;i++)
        {
            var xx = buffer_read(buff,buffer_s16);
            var yy = buffer_read(buff,buffer_s16);
            var spIndex = buffer_read(buff,buffer_s16);
            var iIndex = buffer_read(buff,buffer_s16);
            var angle = buffer_read(buff,buffer_s16);
            var xscale = buffer_read(buff,buffer_s16);
            var yscale = buffer_read(buff,buffer_s16);
            var alpha = buffer_read(buff,buffer_s16);
            ds_list_add(playerSprites, xx);//buffer_read(buff,buffer_s16) );           //x
            ds_list_add(playerSprites, yy);//buffer_read(buff,buffer_s16) );           //y
            ds_list_add(playerSprites, spIndex);//buffer_read(buff,buffer_s16) );      //sprite_index
            ds_list_add(playerSprites, iIndex);//buffer_read(buff,buffer_s16) );       //image_index
            ds_list_add(playerSprites, angle);//buffer_read(buff,buffer_s16) );        //image_angle
            ds_list_add(playerSprites, xscale);//buffer_read(buff,buffer_s16) );       //image_xscale
            ds_list_add(playerSprites, yscale);//buffer_read(buff,buffer_s16) );       //image_yscale
            ds_list_add(playerSprites, alpha);//buffer_read(buff,buffer_s16) );        //image_alpha
        }  
    break;
    case netBackgroundUpdate:
        background_index[0] = buffer_read(buff, buffer_u16);
        day = buffer_read(buff, buffer_u16);
    break;
    case netReadyUpdate:
        needReady = buffer_read(buff, buffer_bool);
        //if(needReady)
        //{
        //    buffer_seek(buff,buffer_seek_start,0);
        //    buffer_write(buff,buffer_u8,netReadyUpdate);
        //    buffer_write(buff,buffer_bool,ready);
        //    network_send_udp(socket, IPAddress, remotePort, buff, buffer_tell(buff));
        //}
    break;
    case netReadyAck:
        ready = buffer_read(buff, buffer_bool);
    break;
    case netAudio:
        var snd = asset_get_index(buffer_read(buff, buffer_string));
        scrPlayAudio(snd);
    break;
    case netMusic:
        var snd = asset_get_index(buffer_read(buff, buffer_string));
        scrPlayMusic(snd);
    break;
    case netStateUpdate:
        var st = buffer_read(buff, buffer_u8);
        if(st == mUpgradeState)
        {
            if(currentState == mLobbyState)
            {
                //do nothing
            }
            else
            {
                currentState = st;
            }
        }
        else if(st = mLobbyState)
        {
            if(currentState == mUpgradeState)
            {
                //do nothing
            }
            else
            {
                currentState = st;
            }
        }
        else
        {
            currentState = st;
        }
        //subState = 0;
    break;
    case netWaveUpdate:
        currentWave = buffer_read(buff, buffer_u8);
        numWaves = buffer_read(buff, buffer_u8);
    break;
    case netStatUpdate:
        //var immediate = buffer_read(buff, buffer_bool);
        newGold = buffer_read(buff, buffer_u32);
        /*if(immediate)
        {
            gold += newGold;
            newGold = 0;
        }*/
    break;
    case netStatAck:
        statAck = true;
    break;
    case netInitialRequest:
        initialAck = true;
        player = buffer_read(buff,buffer_u8);
        day = buffer_read(buff, buffer_u16);
        gold = buffer_read(buff, buffer_u32);
        arrowDamage = buffer_read(buff, buffer_u16);
        multiShot = buffer_read(buff, buffer_u8);
        bowSpeed = buffer_read(buff, buffer_u16)/1000;
        fireDamageMult = buffer_read(buff, buffer_u16)/100;
        frostDamageMult = buffer_read(buff, buffer_u16)/100;
        lightningDamageMult = buffer_read(buff, buffer_u16)/100;
    break;
    case netCarnageUpdate:
        multiplayerGold = buffer_read(buff, buffer_u32);
        numPlayers = buffer_read(buff,buffer_u8)+1;
        mDamagePercentage[0] = buffer_read(buff, buffer_u8);
        mDamagePercentage[1] = buffer_read(buff, buffer_u8);
        mDamagePercentage[2] = buffer_read(buff, buffer_u8);
        mDamagePercentage[3] = buffer_read(buff, buffer_u8);
    break;
    case netParticles:
        var px = buffer_read(buff, buffer_s16);
        var py = buffer_read(buff, buffer_s16);
        var pt = buffer_read(buff, buffer_u8);
        var pa = buffer_read(buff, buffer_u8);
        var ptype = scrGetPartType(pt);
        part_particles_create(parts,px,py,ptype,pa);
    break;
    case netError:
        errMsg = buffer_read(buff, buffer_string);
        alarm[11] = 180;
    break;
    case netLobbyStats:
        numPlayers = buffer_read(buff,buffer_u8)+1;
        mGold[0] = buffer_read(buff,buffer_u32);
        mGold[1] = buffer_read(buff,buffer_u32);
        mGold[2] = buffer_read(buff,buffer_u32);
        mGold[3] = buffer_read(buff,buffer_u32);
        mArrowDamage[0] = buffer_read(buff,buffer_u16);
        mArrowDamage[1] = buffer_read(buff,buffer_u16);
        mArrowDamage[2] = buffer_read(buff,buffer_u16);
        mArrowDamage[3] = buffer_read(buff,buffer_u16);
        mMultiShot[0] = buffer_read(buff,buffer_u8);
        mMultiShot[1] = buffer_read(buff,buffer_u8);
        mMultiShot[2] = buffer_read(buff,buffer_u8);
        mMultiShot[3] = buffer_read(buff,buffer_u8);
        mFireMult[0] = buffer_read(buff,buffer_u16)/100;
        mFireMult[1] = buffer_read(buff,buffer_u16)/100;
        mFireMult[2] = buffer_read(buff,buffer_u16)/100;
        mFireMult[3] = buffer_read(buff,buffer_u16)/100;
        mFrostMult[0] = buffer_read(buff,buffer_u16)/100;
        mFrostMult[1] = buffer_read(buff,buffer_u16)/100;
        mFrostMult[2] = buffer_read(buff,buffer_u16)/100;
        mFrostMult[3] = buffer_read(buff,buffer_u16)/100;
        mLightningMult[0] = buffer_read(buff,buffer_u16)/100;
        mLightningMult[1] = buffer_read(buff,buffer_u16)/100;
        mLightningMult[2] = buffer_read(buff,buffer_u16)/100;
        mLightningMult[3] = buffer_read(buff,buffer_u16)/100;
        mBowSpeed[0] = buffer_read(buff,buffer_u16)/1000;
        mBowSpeed[1] = buffer_read(buff,buffer_u16)/1000;
        mBowSpeed[2] = buffer_read(buff,buffer_u16)/1000;
        mBowSpeed[3] = buffer_read(buff,buffer_u16)/1000;  
    break;
}
