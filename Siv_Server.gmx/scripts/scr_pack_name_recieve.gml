temp_name=buffer_read(buff, buffer_string);
temp_kills=buffer_read(buff, buffer_u8);
temp_deaths=buffer_read(buff, buffer_u8);
with(obj_sock)
{
    if(sock==other.sock)
    {
        if (name!=other.temp_name){scr_log("Client "+string(ip)+" has been named: "+string(other.temp_name));}
        name=other.temp_name;
        my_kills=other.temp_kills
        my_deaths=other.temp_deaths
        scr_pack_name_send(name,my_kills,my_deaths);
    }
}

