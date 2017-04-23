///scr_pack_chat_send(string);
with(obj_sock)
{
    buffer_seek(obj_control.buff_chat,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_chat,buffer_u8,pack_chat);
    
    //chat
    buffer_write(obj_control.buff_chat,buffer_string,argument0);
    
    network_send_packet(sock,obj_control.buff_chat,buffer_tell(obj_control.buff_chat));
}
