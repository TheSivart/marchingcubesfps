///scr_update_chunk();
d3d_model_clear(mod_chunk);

show_debug_message("scr_update_chunk");
if(obj_control.debug==true)
{
    d3d_model_clear(mod_point);
}
//mod_chunk = d3d_model_create();

if(full==1)
{
    d3d_model_primitive_begin(mod_chunk,pr_trianglelist);
    if(obj_control.debug==true)
    {
        mod_point = d3d_model_create();
        d3d_model_primitive_begin(mod_point,pr_trianglelist);
    }
    var i=0,ii=0,iii=0;
    repeat(chunk_size)
    {
        repeat(chunk_size)
        {
            repeat(chunk_size)
            {
                var bid=array3d_get(i,ii,iii);
                scr_chunk_edge(i,ii,iii,bid);
                iii+=1;
            }
            ii+=1;
            iii=0;
        }
        i+=1;
        ii=0;
    }
    d3d_model_primitive_end(mod_chunk);
    if(obj_control.debug==true)
    {
        d3d_model_primitive_end(mod_point);
    }
}
