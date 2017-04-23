///scr_check_world_corner(i2,ii2,iii2);
var i2=argument0,ii2=argument1,iii2=argument2,mx=chunk_size-1;
if (i2<0||ii2<0||iii2<0||i2>mx||ii2>mx||iii2>mx)
{
    var ret=false;
    var xoff=i2,yoff=ii2,zoff=iii2,cxoff=0,cyoff=0,czoff=0;
    if (i2<0){if(myi1>0){xoff=mx;cxoff=-1;}else{return(ret);}}
    if (i2>mx){if(myi1<obj_control.chunk_num_x-1){xoff=0;cxoff=1;}else{return(ret);}}
    if (ii2<0){if(myi2>0){yoff=mx;cyoff=-1;}else{return(ret);}}
    if (ii2>mx){if(myi2<obj_control.chunk_num_y-1){yoff=0;cyoff=1;}else{return(ret);}}
    if (iii2<0){if(myi3>0){zoff=mx;czoff=-1;}else{return(ret);}}
    if (iii2>mx){if(myi3<obj_control.chunk_num_z-1){zoff=0;czoff=1;}else{return(ret);}}
    with(obj_control){with(array3d_get(other.myi1+cxoff,other.myi2+cyoff,other.myi3+czoff)){
    obj_control.check_block=array3d_get(xoff,yoff,zoff)}}
    if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
}
else
{
    if (array3d_get(i2,ii2,iii2)==0)
    {
        return(false);
    }
    else
    {
        return(true);
    }
}
