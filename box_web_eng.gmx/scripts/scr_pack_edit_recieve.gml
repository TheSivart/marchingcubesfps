net_x=buffer_read(buff, buffer_s16);
net_y=buffer_read(buff, buffer_s16);
net_z=buffer_read(buff, buffer_s16);
net_type=buffer_read(buff, buffer_u8);
net_size=buffer_read(buff, buffer_u8);
net_sock=buffer_read(buff, buffer_u8);
switch(net_type)
{
    case(1):
        var obj=instance_create(net_x,net_y,obj_ex1);
        obj.z=net_z;
        obj.ss=net_size;
    break;
    case(2):
        var obj=instance_create(net_x,net_y,obj_ex2);
        obj.z=net_z;
        obj.ss=net_size+10;
    break;
}
if (point_distance_3d(x,y,z,net_x,net_y,net_z)<net_size+20)
{
    last_hit = net_sock;
    if(net_type==1&&point_distance_3d(x,y,z,net_x,net_y,net_z)<net_size+5)
    {
        var xsp=x-net_x,ysp=y-net_y,zsp=z-net_z,zp=z,xp=x,yp=y;
        x_grav=xsp/max(xsp,ysp,zsp);
        y_grav=ysp/max(xsp,ysp,zsp);
        z_grav=zsp/max(xsp,ysp,zsp);
        hp-=5+round(random(5));blood_alpha=0.7+random(0.3);
    }
    if(net_type==2)
    {
        var xsp=x-net_x,ysp=y-net_y,zsp=z-net_z,zp=z,xp=x,yp=y;
        while(point_distance_3d(x,y,z,net_x,net_y,net_z)<net_size+20)
        {
            x+=(xsp/max(xsp,ysp,zsp))*3;
            y+=(ysp/max(xsp,ysp,zsp))*3;
            z+=(zsp/max(xsp,ysp,zsp))*3;
        }
        x_grav=(x-xp)/10;
        y_grav=(y-yp)/10;
        z_grav=(z-zp)/10;
    }
    with(obj_sock)
    {
        if(sock=other.last_hit)
        {
            other.last_hit_name = name;
        }
    }
}

show_debug_mes("pack_edit_recieve");
