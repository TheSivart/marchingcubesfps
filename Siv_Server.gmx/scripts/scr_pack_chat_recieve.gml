temp_chat=buffer_read(buff, buffer_string);

with(obj_sock)
{
    if(sock==other.sock)
    {
        scr_log(string(name)+": "+string(other.temp_chat));
        scr_pack_chat_send(string(name)+": "+string(other.temp_chat));
    }
}

