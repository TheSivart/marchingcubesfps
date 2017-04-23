buffer_seek(buff_name,buffer_seek_start,0);

//pack id
buffer_write(buff_name,buffer_u8,pack_name);

//name
buffer_write(buff_name,buffer_string,name);

//kills
buffer_write(buff_name,buffer_u8,my_kills);

//deaths
buffer_write(buff_name,buffer_u8,my_deaths);

network_send_packet(client,buff_name,buffer_tell(buff_name));

//show_debug_mes("pack_name_send");
