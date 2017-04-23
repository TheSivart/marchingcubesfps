///scr_pack_chunk_send(sock);
with(obj_sock)
{
    buffer_seek(obj_control.buff_pos,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_pos,buffer_u8,pack_pos);
    
    buffer_write(obj_control.buff_pos,buffer_u8,other.sock);
    
    buffer_write(obj_control.buff_pos,buffer_s16,other.x);
    buffer_write(obj_control.buff_pos,buffer_s16,other.y);
    buffer_write(obj_control.buff_pos,buffer_s16,other.z);
    buffer_write(obj_control.buff_pos,buffer_s16,other.direction);
    buffer_write(obj_control.buff_pos,buffer_s16,other.zdir);
    buffer_write(obj_control.buff_pos,buffer_u8,other.dead);
    
    
    if(sock==other.sock)
    {
        buffer_write(obj_control.buff_pos,buffer_u8,1);
    }
    else
    {
        buffer_write(obj_control.buff_pos,buffer_u8,0);
    }
    
    network_send_packet(sock,obj_control.buff_pos,buffer_tell(obj_control.buff_pos));    
}
