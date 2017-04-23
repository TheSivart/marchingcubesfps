///scr_pack_chunk_send(sock);
if (full==1)
{
    buffer_seek(obj_control.buff_chunk,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_chunk,buffer_u8,pack_chunk);
    
    buffer_write(obj_control.buff_chunk,buffer_u8,myi1);
    buffer_write(obj_control.buff_chunk,buffer_u8,myi2);
    buffer_write(obj_control.buff_chunk,buffer_u8,myi3);
    
    buffer_write(obj_control.buff_chunk,buffer_u8,u_num);
    
    buffer_write(obj_control.buff_chunk,buffer_u8,full);
    
    var i=0,ii=0,iii=0;
    repeat(10)
    {
        repeat(10)
        {
            repeat(10)
            {
                buffer_write(obj_control.buff_chunk,buffer_u8,array3d_get(i,ii,iii));
                iii+=1;
            }
            ii+=1;
            iii=0;
        }
        i+=1;
        ii=0;
    }
    
    network_send_packet(argument0,obj_control.buff_chunk,buffer_tell(obj_control.buff_chunk));
}
else
{
    buffer_seek(obj_control.buff_chunk_small,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_chunk_small,buffer_u8,pack_chunk);
    
    buffer_write(obj_control.buff_chunk_small,buffer_u8,myi1);
    buffer_write(obj_control.buff_chunk_small,buffer_u8,myi2);
    buffer_write(obj_control.buff_chunk_small,buffer_u8,myi3);
    
    buffer_write(obj_control.buff_chunk_small,buffer_u8,u_num);
    
    buffer_write(obj_control.buff_chunk_small,buffer_u8,full);
    
    network_send_packet(argument0,obj_control.buff_chunk_small,buffer_tell(obj_control.buff_chunk_small));
}
