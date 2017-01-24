///scrCreateParticles(x,y,type,amount)      //creates particles and sends trigger to clients
var px = argument0;
var py = argument1;
var ptype = argument2;
var pamount = argument3;

part_particles_create(parts,px,py,ptype,pamount);

if(hosting)
{
    with(objServer)
    {
        var count = ds_list_size(socketList);

        if(count > 0)
        {
            var pt = scrGetPartInt(ptype);
            buffer_seek(buffer,buffer_seek_start,0);
            buffer_write(buffer,buffer_u8,netParticles);
            buffer_write(buffer,buffer_s16,px);
            buffer_write(buffer,buffer_s16,py);
            buffer_write(buffer,buffer_u8,pt);
            buffer_write(buffer,buffer_u8,pamount);
            
            for(i=0;i<count;i++)
            {          
                var sock = ds_list_find_value(socketList,i);
                var ip = ds_list_find_value(ipList,i);
                var port = ds_list_find_value(portList,i);       
                network_send_udp(sock, ip, port, buffer, buffer_tell(buffer));   
           
            }
        }
    }
}
