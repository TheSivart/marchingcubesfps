///scr_draw_players();
with(obj_sock)
{
    if (sock!=other.sock&&dead==false)
    {
        //d3d_draw_ellipsoid(x-1,y-1,z-1+10,x+1,y+1,z+1+10,-1,1,1,10);
        d3d_transform_set_identity();
            d3d_transform_add_rotation_z(direction+90);
            d3d_transform_add_translation(x,y,z);
                d3d_draw_block(-3,-3,-20,3,3,0,-1,1,1);
        d3d_transform_set_identity();
        d3d_transform_set_identity();
            d3d_transform_add_rotation_x(zdir);
            d3d_transform_add_rotation_z(direction+90);
            d3d_transform_add_translation(x,y,z);
                d3d_draw_block(-3.5,-3.5,-3.5,3.5,3.5,3.5,-1,1,1);
        d3d_transform_set_identity();
    }
}