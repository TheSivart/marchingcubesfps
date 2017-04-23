net_sock=buffer_read(buff, buffer_u8);
net_sock2=buffer_read(buff, buffer_u8);
net_text=buffer_read(buff, buffer_string);
show_message_gui(net_text);
if(net_sock!=sock&&net_sock2==sock)
{
    my_kills += 1;
}

show_debug_mes("pack_show_message_recieve");
/*
with(obj_sock)
{
    if(sock==other.net_sock)
    {
        name=other.net_name;
    }
}
