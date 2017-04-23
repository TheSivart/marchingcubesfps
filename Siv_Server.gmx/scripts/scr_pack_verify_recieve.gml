temp_x=buffer_read(buff, buffer_u8);
temp_y=buffer_read(buff, buffer_u8);
temp_z=buffer_read(buff, buffer_u8);
with(obj_sock)
{
    if(sock==other.sock)
    {
        var temp_ui=buffer_read(other.buff, buffer_u8);
        array3d_set(other.temp_x,other.temp_y,other.temp_z,temp_ui);
        //scr_log("update num: "+string(temp_ui));
        
    }
}
