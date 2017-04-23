/*
with(obj_ex)
{
    al-=0.1;
    ss-=1;
    draw_set_alpha(al)
    draw_set_color(c_red);
    d3d_draw_ellipsoid(x-ss,y-ss,z-ss,x+ss,y+ss,z+ss,-1,1,1,10);
    draw_set_color(c_white);
    draw_set_alpha(1);
    if(al<=0)
    {
        instance_destroy();
    }
}

