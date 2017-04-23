buffer_seek(buff_kill_message,buffer_seek_start,0);

//pack id
buffer_write(buff_kill_message,buffer_u8,pack_kill_message);

buffer_write(buff_kill_message,buffer_string,name);

network_send_packet(client,buff_kill_message,buffer_tell(buff_kill_message));
