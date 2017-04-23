///scr_get_block(worldix,worldiy,worldiz);
if (argument0>=0&&argument1>=0&&argument2>=0&&argument0<chunk_num_x*10&&argument1<chunk_num_y*10&&argument2<chunk_num_z*10)
{
    worldix=argument0;worldiy=argument1;worldiz=argument2;
    worldiix=floor(worldix/10);worldiiy=floor(worldiy/10);worldiiz=floor(worldiz/10);
    with(array3d_get(worldiix,worldiiy,worldiiz))
    {
        var xe=other.worldix-(other.worldiix*10),ye=other.worldiy-(other.worldiiy*10),ze=other.worldiz-(other.worldiiz*10);
        return(array3d_get(xe,ye,ze));
    }
}
