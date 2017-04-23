temp_x=buffer_read(buff, buffer_s16);
temp_y=buffer_read(buff, buffer_s16);
temp_z=buffer_read(buff, buffer_s16);
temp_dir=buffer_read(buff, buffer_s16);
temp_zdir=buffer_read(buff, buffer_s16);
temp_dead=buffer_read(buff, buffer_u8);
with(obj_sock)
{
    if(sock==other.sock)
    {
        x=other.temp_x;
        y=other.temp_y;
        z=other.temp_z;
        direction=other.temp_dir;
        zdir=other.temp_zdir;
        dead=other.temp_dead;
    }
}

