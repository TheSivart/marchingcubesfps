///scr_edit_block(worldix,worldiy,worldiz,val);
if (argument0>=0&&argument1>=0&&argument2>=0&&argument0<chunk_num_x*10&&argument1<chunk_num_y*10&&argument2<chunk_num_z*10)
{
    worldix=argument0;worldiy=argument1;worldiz=argument2;
    worldiix=floor(worldix/10);worldiiy=floor(worldiy/10);worldiiz=floor(worldiz/10);
    
    with(array3d_get(worldiix,worldiiy,worldiiz))
    {
        var xe=other.worldix-(other.worldiix*10),ye=other.worldiy-(other.worldiiy*10),ze=other.worldiz-(other.worldiiz*10);
        array3d_set(xe,ye,ze,argument3);
        
        if(buf==false)
        {
            buf=true;
            u_num+=1;
            my_buf=obj_control.chunk_buffer_num;
            obj_control.chunk_buffer_num += 1;
        }
        
        //x
        if (xe<1&&myi1>0)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1-1,other.myi2,other.myi3))
                {
                    obj_control.check_block=array3d_get(chunk_size-1,ye,ze)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
        if (xe>chunk_size-2&&myi1<obj_control.chunk_num_x-1)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1+1,other.myi2,other.myi3))
                {
                    obj_control.check_block=array3d_get(0,ye,ze)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
        
        //y
        if (ye<1&&myi2>0)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1,other.myi2-1,other.myi3))
                {
                    obj_control.check_block=array3d_get(xe,chunk_size-1,ze)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
        if (ye>chunk_size-2&&myi2<obj_control.chunk_num_y-1)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1,other.myi2+1,other.myi3))
                {
                    obj_control.check_block=array3d_get(xe,0,ze)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
        
        //z
        if (ze<1&&myi3>0)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1,other.myi2,other.myi3-1))
                {
                    obj_control.check_block=array3d_get(xe,ye,chunk_size-1)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
        if (ze>chunk_size-2&&myi3<obj_control.chunk_num_z-1)
        {
            with(obj_control)
            {
                with(array3d_get(other.myi1,other.myi2,other.myi3+1))
                {
                    obj_control.check_block=array3d_get(xe,ye,0)
                    if (obj_control.check_block!=0)
                    {
                        obj_control.check_block=0;
                        if(buf==false)
                        {
                            buf=true;
                            my_buf=obj_control.chunk_buffer_num;
                            obj_control.chunk_buffer_num += 1;
                        }
                    }
                }
            }
        }
    
    }
}

