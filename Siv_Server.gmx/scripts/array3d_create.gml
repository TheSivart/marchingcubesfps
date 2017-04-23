///array3d_create(i1 size,i2 size,i3 size);
var i=0,ii=0,iii=0,io=false;
i1size=argument0;
i2size=argument1;
i3size=argument2;
repeat(i1size)
{
    repeat(i2size)
    {
        repeat(i3size)
        {
            //var val=choose(1,2,3,4,0);
            val = 1;
            if (obj_control.chunk_file_read==true)
            {
                val = file_text_read_real(obj_control.read_chunk);
            }
            //if io==true val = 3; else val = 0;
            io=!io;
            array3d_set(i,ii,iii,val);
            iii+=1;
        }
        ii+=1;
        iii=0;
    }
    i+=1;
    ii=0;
}
if (obj_control.chunk_file_read==true)
{
    file_text_readln(obj_control.read_chunk);
}
