///scr_create_chunk(chunk size, block size);
mod_chunk = d3d_model_create();
d3d_model_primitive_begin(mod_chunk,pr_trianglelist);
var i=0,ii=0,iii=0;
repeat(chunk_size)
{
    repeat(chunk_size)
    {
        repeat(chunk_size)
        {
            var bid=array3d_get(i,ii,iii);
            if (bid!=0)
            {
                //d3d_model_block(mod_chunk,i*bsize,ii*bsize,(iii)*bsize,(i+1)*bsize,(ii+1)*bsize,((iii+1))*bsize,1,1);
                scr_chunk_block(i,ii,iii,bid);
            }
            iii+=1;
        }
        ii+=1;
        iii=0;
    }
    i+=1;
    ii=0;
}
d3d_model_primitive_end(mod_chunk);

