///scr_pack_chat_send(string);
buffer_seek(buff_chat,buffer_seek_start,0);

//pack id
buffer_write(buff_chat,buffer_u8,pack_chat);

//string
buffer_write(buff_chat,buffer_string,string(argument0));

network_send_packet(client,buff_chat,buffer_tell(buff_chat));
