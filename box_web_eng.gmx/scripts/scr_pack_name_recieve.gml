net_sock=buffer_read(buff, buffer_u8);
net_name=buffer_read(buff, buffer_string);
net_kills=buffer_read(buff, buffer_u8);
net_deaths=buffer_read(buff, buffer_u8);
with(obj_sock)
{
    if(sock==other.net_sock)
    {
        name=other.net_name;
        my_kills=other.net_kills;
        my_deaths=other.net_deaths;
    }
}

//show_debug_mes("pack_name_recieve");
