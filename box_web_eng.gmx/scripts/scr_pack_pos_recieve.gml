net_sock=buffer_read(buff, buffer_u8);
net_x=buffer_read(buff, buffer_s16);
net_y=buffer_read(buff, buffer_s16);
net_z=buffer_read(buff, buffer_s16);
net_direction=buffer_read(buff, buffer_s16);
net_zdir=buffer_read(buff, buffer_s16);
net_dead=buffer_read(buff, buffer_u8);
var mysock=buffer_read(buff, buffer_u8);
if (mysock==1)
{
    sock=net_sock;
}
new_sock = false;
with(obj_sock)
{
    if(sock==other.net_sock)
    {
        x=other.net_x;
        y=other.net_y;
        z=other.net_z;
        direction=other.net_direction;
        zdir=other.net_zdir;
        dead=other.net_dead;
        other.new_sock = true;
        alarm[0]=120;
    }
}
if(other.new_sock==false)
{
    var obj=instance_create(net_x,net_y,obj_sock);
    obj.z=net_z;
    obj.direction=net_direction;
    obj.zdir=net_zdir;
    obj.dead=net_dead;
    obj.sock=net_sock;
    show_debug_message("new_sock: "+string(net_sock));
}
