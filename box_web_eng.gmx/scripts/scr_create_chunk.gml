///scr_create_chunk(chunk size, block size);
mod_chunk = d3d_model_create();
if(obj_control.debug==true)
{
    mod_point = d3d_model_create();
    d3d_model_primitive_begin(mod_point,pr_trianglelist);
}

if(full==1)
{
    d3d_model_primitive_begin(mod_chunk,pr_trianglelist);
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
    obj_control.chunk_skip = false;
}
else
{
    obj_control.chunk_skip = true;
}

if(obj_control.debug==true)
{
    d3d_model_primitive_end(mod_point);
}
