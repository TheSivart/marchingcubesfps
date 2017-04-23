///scr_pack_chunk_send(sock);
with(obj_sock)
{
    buffer_seek(obj_control.buff_name,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_name,buffer_u8,pack_name);
    
    buffer_write(obj_control.buff_name,buffer_u8,other.sock);
    
    //name
    buffer_write(obj_control.buff_name,buffer_string,argument0);
    
    //kills
    buffer_write(obj_control.buff_name,buffer_u8,argument1);
    
    //deaths
    buffer_write(obj_control.buff_name,buffer_u8,argument2);    
    
    network_send_packet(sock,obj_control.buff_name,buffer_tell(obj_control.buff_name));
}
