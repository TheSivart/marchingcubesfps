///scr_ex(x,y,z);
//scr_pack_edit_send(argument0,argument1,argument2,2);
/*
with(obj_control)
{
    var xx=floor(argument0/10),yy=floor(argument1/10),zz=floor(argument2/10);
    var ix=0,iy=0,iz=0,exsize=4;
    repeat(exsize*2)
    {
        repeat(exsize*2)
        {
            repeat(exsize*2)
            {
                if (point_distance_3d(exsize,exsize,exsize,ix,iy,iz)<exsize-1)
                {
                    if (scr_get_block(xx+ix-exsize,yy+iy-exsize,zz+iz-exsize)==0)
                    {
                        scr_edit_block(xx+ix-exsize,yy+iy-exsize,zz+iz-exsize,1);
                    }
                }
                if (point_distance_3d(exsize,exsize,exsize,ix,iy,iz)<exsize)
                {
                    if (scr_get_block(xx+ix-exsize,yy+iy-exsize,zz+iz-exsize)==0)
                    {
                        scr_edit_block(xx+ix-exsize,yy+iy-exsize,zz+iz-exsize,2);
                    }
                }
                iz+=1;
            }
            iy+=1;
            iz=0;
        }
        ix+=1;
        iy=0;
    }
}
