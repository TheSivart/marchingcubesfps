chunk_num_x=buffer_read(buff, buffer_u8);
chunk_num_y=buffer_read(buff, buffer_u8);
chunk_num_z=buffer_read(buff, buffer_u8);

array3d_create(chunk_num_x,chunk_num_y,chunk_num_z);

var xi=0,yi=0,zi=0,i1=0,i2=0,i3=0;
loaded = 0;
load_num = 0;
repeat(chunk_num_x)
{
    repeat(chunk_num_y)
    {
        repeat(chunk_num_z)
        {
            var obj = instance_create(xi,yi,obj_chunk);
            obj.z=zi;
            obj.myload = loaded;
            obj.dis_set = false;
            loaded += 1;
            array3d_set(i1,i2,i3,obj);
            obj.myi1=i1;
            obj.myi2=i2;
            obj.myi3=i3;
            with(obj){array3d_create(10,10,10);}
            obj.chunk_size = 10;
            obj.bsize = 10;
            zi += 100;
            i3+=1;
            
        }
        yi += 100;
        zi = 0;
        i2+=1;
        i3=0;
    }
    xi += 100;
    yi = 0;
    i1+=1;
    i2=0;
}


x = (chunk_num_x*100)/2;
y = (chunk_num_y*100)/2;
z = (chunk_num_z*100)+20;

num_chunks = loaded;
loaded = 0;
var load_rad=0;
while(loaded<num_chunks)
{
    load_rad+=50;
    with(obj_chunk)
    {
        if(dis_set==false)
        {
            if(point_distance_3d(x+50,y+50,z+50,other.x,other.y,other.z)<=load_rad)
            {
                myload = other.loaded;
                other.loaded+=1;
                dis_set=true;
            }
        }
    }
}

show_debug_mes("pack_map_recieve");
