temp_x=buffer_read(buff, buffer_s16);
temp_y=buffer_read(buff, buffer_s16);
temp_z=buffer_read(buff, buffer_s16);
temp_type=buffer_read(buff, buffer_u8);
temp_size=buffer_read(buff, buffer_u8);
switch(temp_type)
{
    case(1):
        scr_ex(temp_x,temp_y,temp_z,temp_size);
    break;
    case(2):
        scr_ex2(temp_x,temp_y,temp_z,temp_size);
    break;
}
with(obj_sock)
{
    //if(sock==other.sock)
    {
        scr_pack_edit_send(other.temp_x,other.temp_y,other.temp_z,other.temp_type,other.temp_size,other.sock);
    }
}

