net_sock=buffer_read(buff, buffer_u8);

with(obj_sock)
{
    if(sock==other.net_sock)
    {
        instance_destroy();
    }
}
show_debug_mes("pack_diss_recieve");
