///scr_pack_chunk_send(sock);
with(obj_sock)
{
    buffer_seek(obj_control.buff_diss,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_diss,buffer_u8,pack_diss);
    
    buffer_write(obj_control.buff_diss,buffer_u8,other.sock);

    network_send_packet(sock,obj_control.buff_diss,buffer_tell(obj_control.buff_diss));
}
