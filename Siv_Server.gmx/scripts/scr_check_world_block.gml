///scr_check_world_block(i2,ii2,iii2);
//return(false);
var i2=argument0,ii2=argument1,iii2=argument2;
if (i2<0||ii2<0||iii2<0||i2>chunk_size-1||ii2>chunk_size-1||iii2>chunk_size-1)
{
    //x
    if (i2<0&&myi1>0)
    {
        with(obj_control){with(array3d_get(other.myi1-1,other.myi2,other.myi3)){
        obj_control.check_block=array3d_get(chunk_size-1,argument1,argument2)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    if (i2>chunk_size-1&&myi1<obj_control.chunk_num_x-1)
    {
        with(obj_control){with(array3d_get(other.myi1+1,other.myi2,other.myi3)){
        obj_control.check_block=array3d_get(0,argument1,argument2)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    //y
    if (ii2<0&&myi2>0)
    {
        with(obj_control){with(array3d_get(other.myi1,other.myi2-1,other.myi3)){
        obj_control.check_block=array3d_get(argument0,chunk_size-1,argument2)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    if (ii2>chunk_size-1&&myi2<obj_control.chunk_num_y-1)
    {
        with(obj_control){with(array3d_get(other.myi1,other.myi2+1,other.myi3)){
        obj_control.check_block=array3d_get(argument0,0,argument2)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    //z
    if (iii2<0&&myi3>0)
    {
        with(obj_control){with(array3d_get(other.myi1,other.myi2,other.myi3-1)){
        obj_control.check_block=array3d_get(argument0,argument1,chunk_size-1)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    if (iii2>chunk_size-1&&myi3<obj_control.chunk_num_z-1)
    {
        with(obj_control){with(array3d_get(other.myi1,other.myi2,other.myi3+1)){
        obj_control.check_block=array3d_get(argument0,argument1,0)}}
        if (obj_control.check_block!=0){obj_control.check_block=0;return(true);}else{return(false)}
    }
    if (iii2>chunk_size-1&&myi3>obj_control.chunk_num_z-2)
    {
        return(false);
    }
    else
    {
        return(true);
    }
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

