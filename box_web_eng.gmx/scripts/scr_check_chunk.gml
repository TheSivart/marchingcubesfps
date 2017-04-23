///scr_check_chunk();
var i=0,ii=0,iii=0,tts=bsize*10;
/*
if(scr_check_line_box(x,y,z-tts,x+tts,y+tts,z,obj_control.x,obj_control.y,obj_control.z,obj_control.cx,obj_control.cy,obj_control.cz))
{
    d3d_draw_block(x,y,z-tts,x+tts,y+tts,z,-1,1,1);
}
*/
if(scr_check_line_box(x,y,z,x+tts,y+tts,z+tts,obj_control.x,obj_control.y,obj_control.z,obj_control.cx,obj_control.cy,obj_control.cz))
{
    //d3d_draw_block(x,y,z+tts,x+tts,y+tts,z,-1,1,1);
    repeat(chunk_size)
    {
        repeat(chunk_size)
        {
            repeat(chunk_size)
            {
                if (array3d_get(i,ii,iii)!=0)
                {
                    var x1=i*bsize,y1=ii*bsize,z1=(iii)*bsize,x2=(i+1)*bsize,y2=(ii+1)*bsize,z2=((iii+1))*bsize;
                    x1+=x;x2+=x;y1+=y;y2+=y;z1+=z;z2+=z;
                    if(scr_check_line_box(x1,y1,z1,x2,y2,z2,obj_control.x,obj_control.y,obj_control.z,obj_control.cx,obj_control.cy,obj_control.cz))
                    {
                        //d3d_draw_block(x1-0.1,y1-0.1,z2-0.1,x2+0.1,y2+0.1,z1+0.1,-1,1,1);
                        var selsize=1;
                        x1=obj_control.hitx-selsize;y1=obj_control.hity-selsize;z1=obj_control.hitz-selsize;
                        x2=obj_control.hitx+selsize;y2=obj_control.hity+selsize;z2=obj_control.hitz+selsize;
                        draw_set_color(c_red);
                        d3d_draw_block(x1-0.1,y1-0.1,z1-0.1,x2+0.1,y2+0.1,z2+0.1,-1,1,1);
                        draw_set_color(c_white);
                        if (keyboard_check(vk_space)==true)
                        {
                            array3d_set(i,ii,iii,false);
                            update=true;
                        }
                        
                    }
                }
                iii+=1;
            }
            ii+=1;
            iii=0;
        }
        i+=1;
        ii=0;
    }
}
