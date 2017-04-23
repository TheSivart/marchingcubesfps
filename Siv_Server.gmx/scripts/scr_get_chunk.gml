///scr_get_chunk(i2,ii2,iii2);
//return(false);
var i2=argument0,ii2=argument1,iii2=argument2;
if (i2<0||ii2<0||iii2<0||i2>chunk_num_x-1||ii2>chunk_num_y-1||iii2>chunk_num_z-1)
{
    return(false);
}
else
{
    return(array3d_get(i2,ii2,iii2));
}

