/// Send a key "event" to the server
///
///  arg0 = mouse_x
///  arg1 = mouse_y
///  arg2 = leftClicked
{
    displayx = argument0;
    displayy = argument1;
    // Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
    buffer_seek(buffer, buffer_seek_start, 0);

    // Write the command, the key and the UP/DOWN state into the buffer
    buffer_write(buffer, buffer_u8, netMouse);
    buffer_write(buffer, buffer_u32, argument0);
    buffer_write(buffer, buffer_u32, argument1);
    buffer_write(buffer, buffer_bool, argument2);

    // Send this to the server
    network_send_udp(socket, IPAddress, remotePort, buffer, buffer_tell(buffer));
}


