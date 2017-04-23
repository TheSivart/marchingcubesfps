///scr_pack_shoot_send(x,y,z,type,size);
with(obj_sock)
{
    buffer_seek(obj_control.buff_shoot,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_shoot,buffer_u8,pack_shoot);
    
    buffer_write(obj_control.buff_shoot,buffer_u8,other.sock);
    
    buffer_write(obj_control.buff_shoot,buffer_s16,argument0);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument1);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument2);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument3);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument4);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument5);
    buffer_write(obj_control.buff_shoot,buffer_u8,argument6);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument7);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument8);
    buffer_write(obj_control.buff_shoot,buffer_s16,argument9);
    
    network_send_packet(sock,obj_control.buff_shoot,buffer_tell(obj_control.buff_shoot));
}
