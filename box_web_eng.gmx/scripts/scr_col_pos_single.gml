///scr_col_pos_single(x,y,z);
with(obj_control)
{
    var i1=floor(argument0/100),i2=floor(argument1/100),i3=floor(argument2/100);
    var obj=scr_get_chunk(i1,i2,i3);
    var ret=false,che=false;
    if (obj!=false)
    {
        with(obj)
        {
            che=scr_check_block(floor((argument0-x)/10),floor((argument1-y)/10),floor((argument2-z)/10));if che==true return che;
        }
    }
    return(false);
}
