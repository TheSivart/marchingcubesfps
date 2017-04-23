///scr_pack_verify(packid);

buffer_seek(obj_control.buff_verify,buffer_seek_start,0);

//pack id
buffer_write(obj_control.buff_verify,buffer_u8,pack_verify);

buffer_write(obj_control.buff_verify,buffer_u8,real(argument0)); //xid

buffer_write(obj_control.buff_verify,buffer_u8,real(argument1)); //yid

buffer_write(obj_control.buff_verify,buffer_u8,real(argument2)); //zid

buffer_write(obj_control.buff_verify,buffer_u8,real(argument3)); //unum

network_send_packet(obj_control.client,obj_control.buff_verify,buffer_tell(obj_control.buff_verify));
