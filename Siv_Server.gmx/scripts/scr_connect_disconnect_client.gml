var t = ds_map_find_value(async_load, "type");
sock = ds_map_find_value(async_load, "socket");
var ip = ds_map_find_value(async_load, "ip");
if(t==network_type_connect)
{
    var obj=instance_create(0,0,obj_sock);
    obj.sock=sock;
    obj.ip=ip;
    scr_log("New Client Connected: "+string(ip));
    with(obj)
    {
        scr_pack_map_send();
    }
    con = true;    
}
else
{
    with(obj_sock)
    {
        if (sock==other.sock)
        {
            scr_pack_diss_send();
            scr_log("Client Disconnected: "+string(name));
            instance_destroy();
        }
    }
    con = false;
}
