///scr_pack_chunk_send(sock);
with(obj_sock)
{
    buffer_seek(obj_control.buff_kill_message,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_kill_message,buffer_u8,pack_kill_message);
    
    buffer_write(obj_control.buff_kill_message,buffer_u8,argument0);
    
    buffer_write(obj_control.buff_kill_message,buffer_u8,argument1);
    
    buffer_write(obj_control.buff_kill_message,buffer_string,argument2);
    
    network_send_packet(sock,obj_control.buff_kill_message,buffer_tell(obj_control.buff_kill_message));
}
