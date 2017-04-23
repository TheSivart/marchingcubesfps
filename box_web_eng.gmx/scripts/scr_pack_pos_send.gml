buffer_seek(buff_pos,buffer_seek_start,0);

//pack id
buffer_write(buff_pos,buffer_u8,pack_pos);

buffer_write(buff_pos,buffer_s16,x);
buffer_write(buff_pos,buffer_s16,y);
buffer_write(buff_pos,buffer_s16,z+cam_off);
buffer_write(buff_pos,buffer_s16,direction);
buffer_write(buff_pos,buffer_s16,zdir);
buffer_write(buff_pos,buffer_u8,dead);

network_send_packet(client,buff_pos,buffer_tell(buff_pos));
