///array3d_create(i1 size,i2 size,i3 size);
var i=0,ii=0,iii=0;
i1size=argument0;
i2size=argument1;
i3size=argument2;
repeat(i1size)
{
    repeat(i2size)
    {
        repeat(i3size)
        {
            val = 0;
            array3d_set(i,ii,iii,val);
            iii+=1;
        }
        ii+=1;
        iii=0;
    }
    i+=1;
    ii=0;
}
