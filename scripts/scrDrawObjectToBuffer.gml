///scrDrawObjectToBuffer(obj)        //Stores the sprites of a single object in buffer to send to clients

with(argument0)
{
    if(visible)
    {
        buffer_write(objServer.drawBuffer, buffer_s16, x);
        buffer_write(objServer.drawBuffer, buffer_s16, y);
        buffer_write(objServer.drawBuffer, buffer_s16, sprite_index);
        buffer_write(objServer.drawBuffer, buffer_s16, image_index);
        buffer_write(objServer.drawBuffer, buffer_s16, image_angle);
        buffer_write(objServer.drawBuffer, buffer_s16, image_xscale*1000);
        buffer_write(objServer.drawBuffer, buffer_s16, image_yscale*1000);
        buffer_write(objServer.drawBuffer, buffer_s16, image_alpha*1000);
        buffCount++;
    }
}

