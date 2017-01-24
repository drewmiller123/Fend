/// scrSendStats()          //sends updated stats to server after upgrading
///



    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buffer, buffer_seek_start, 0);

    // Write the command, the key and the UP/DOWN state into the buffer
    buffer_write(buffer, buffer_u8, netStatUpdate);
    buffer_write(buffer, buffer_u32, gold);
    buffer_write(buffer, buffer_u16, arrowDamage);
    buffer_write(buffer, buffer_u8, multiShot);
    buffer_write(buffer, buffer_u16, bowSpeed*1000);
    buffer_write(buffer, buffer_u16, fireDamageMult*100);
    buffer_write(buffer, buffer_u16, frostDamageMult*100);
    buffer_write(buffer, buffer_u16, lightningDamageMult*100);

    // Send this to the server
    network_send_udp(socket, IPAddress, remotePort, buffer, buffer_tell(buffer));



