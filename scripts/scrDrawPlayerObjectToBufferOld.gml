///scrDrawPlayerObjectToBuffer(obj)        //Stores the sprites of a single object in buffer to send to clients

with(argument0)
{
    if(visible)
    {
        buffer_write(objServer.playerBuffer, buffer_s16, x);
        buffer_write(objServer.playerBuffer, buffer_s16, y);
        buffer_write(objServer.playerBuffer, buffer_s16, sprite_index);
        buffer_write(objServer.playerBuffer, buffer_s16, image_index);
        buffer_write(objServer.playerBuffer, buffer_s16, image_angle);
        buffer_write(objServer.playerBuffer, buffer_s16, image_xscale*1000);
        buffer_write(objServer.playerBuffer, buffer_s16, image_yscale*1000);
        if(player == other.i+1)
        {
            buffer_write(objServer.playerBuffer, buffer_s16, image_alpha*1000);           
        }
        else
        {
            buffer_write(objServer.playerBuffer, buffer_s16, image_alpha/2*1000);
        }
        playerBuffCount++;
    }
}

