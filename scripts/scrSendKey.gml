/// Send a key "event" to the server
///
///  arg0 = key
///  arg1 = down=0, up=1
///
{
    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buffer, buffer_seek_start, 0);

    // Write the command, the key and the UP/DOWN state into the buffer
    buffer_write(buffer, buffer_u8, netKeyboard);
    buffer_write(buffer, buffer_s16, argument0);
    //buffer_write(buffer, buffer_bool, argument1);

    // Send this to the server
    network_send_udp(socket, IPAddress, remotePort, buffer, buffer_tell(buffer));
}


