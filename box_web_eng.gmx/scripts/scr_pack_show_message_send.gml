buffer_seek(buff_kill_message,buffer_seek_start,0);

//pack id
buffer_write(buff_kill_message,buffer_u8,pack_kill_message);

//sock id
buffer_write(buff_kill_message,buffer_u8,argument0);

//message
buffer_write(buff_kill_message,buffer_string,argument1);

network_send_packet(client,buff_kill_message,buffer_tell(buff_kill_message));

show_debug_mes("pack_show_message_send");
