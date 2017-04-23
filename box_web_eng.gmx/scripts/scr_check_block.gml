///scr_check_block(cbi2,cbii2,cbiii2);
//return(false);
var cbi2=argument0,cbii2=argument1,cbiii2=argument2;
if (cbi2<0||cbii2<0||cbiii2<0||cbi2>chunk_size-1||cbii2>chunk_size-1||cbiii2>chunk_size-1)
{
    return(false);
}
else
{
    if (array3d_get(cbi2,cbii2,cbiii2)==0)
    {
        return(false);
    }
    else
    {
        return(true);
    }
}
