///scr_pack_shoot_send(x,y,z,type,size);
buffer_seek(obj_control.buff_shoot,buffer_seek_start,0);

//pack id
buffer_write(obj_control.buff_shoot,buffer_u8,pack_shoot);

buffer_write(obj_control.buff_shoot,buffer_s16,argument0);
buffer_write(obj_control.buff_shoot,buffer_s16,argument1);
buffer_write(obj_control.buff_shoot,buffer_s16,argument2);
buffer_write(obj_control.buff_shoot,buffer_s16,argument3*100);
buffer_write(obj_control.buff_shoot,buffer_s16,argument4*100);
buffer_write(obj_control.buff_shoot,buffer_s16,argument5*100);
buffer_write(obj_control.buff_shoot,buffer_u8,argument6);
buffer_write(obj_control.buff_shoot,buffer_s16,argument7*100);
buffer_write(obj_control.buff_shoot,buffer_s16,argument8*100);
buffer_write(obj_control.buff_shoot,buffer_s16,argument9*100);


network_send_packet(obj_control.client,obj_control.buff_shoot,buffer_tell(obj_control.buff_shoot));

show_debug_mes("pack_shoot_send");
