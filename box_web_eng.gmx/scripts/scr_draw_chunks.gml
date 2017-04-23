///scr_draw_chunks
with(obj_chunk)
{
    d3d_model_draw(mod_chunk,x+5,y+5,z+5,obj_control.tex_block2);
}

//d3d_set_lighting(false);
//d3d_set_hidden(true);
if(obj_control.debug==true)
{
    with(obj_chunk)
    {
        d3d_model_draw(mod_point,x+5,y+5,z+5,obj_control.tex_block);
    }
}
//d3d_set_hidden(true);
//d3d_set_lighting(true);
