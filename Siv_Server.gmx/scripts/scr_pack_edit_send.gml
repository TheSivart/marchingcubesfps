///scr_pack_edit_send(x,y,z,type,size);
//with(obj_sock)
{
    buffer_seek(obj_control.buff_edit,buffer_seek_start,0);
    
    //pack_id
    buffer_write(obj_control.buff_edit,buffer_u8,pack_edit);
    
    buffer_write(obj_control.buff_edit,buffer_s16,argument0);
    buffer_write(obj_control.buff_edit,buffer_s16,argument1);
    buffer_write(obj_control.buff_edit,buffer_s16,argument2);
    
    buffer_write(obj_control.buff_edit,buffer_u8,argument3);
    buffer_write(obj_control.buff_edit,buffer_u8,argument4);
    
    buffer_write(obj_control.buff_edit,buffer_u8,argument5);
    
    network_send_packet(sock,obj_control.buff_edit,buffer_tell(obj_control.buff_edit));
}
