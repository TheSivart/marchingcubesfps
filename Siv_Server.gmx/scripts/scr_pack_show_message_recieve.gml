temp_sock=buffer_read(buff,buffer_u8)
temp_text=buffer_read(buff, buffer_string);
with(obj_sock)
{
    if(sock==other.sock)
    {
        scr_pack_show_message_send(sock,other.temp_sock,other.temp_text);
    }
}
