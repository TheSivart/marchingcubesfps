buffer_seek(obj_control.buff_map,buffer_seek_start,0);

//pack_id
buffer_write(obj_control.buff_map,buffer_u8,pack_map);

buffer_write(obj_control.buff_map,buffer_u8,obj_control.chunk_num_x);
buffer_write(obj_control.buff_map,buffer_u8,obj_control.chunk_num_y);
buffer_write(obj_control.buff_map,buffer_u8,obj_control.chunk_num_z);

network_send_packet(sock,obj_control.buff_map,buffer_tell(obj_control.buff_map));
