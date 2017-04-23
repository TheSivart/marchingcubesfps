net_myi1=buffer_read(buff, buffer_u8);
net_myi2=buffer_read(buff, buffer_u8);
net_myi3=buffer_read(buff, buffer_u8);

with(array3d_get(net_myi1,net_myi2,net_myi3))
{
    u_num_old = u_num;
    u_num = buffer_read(obj_control.buff, buffer_u8);
    show_debug_message("update num: "+string(u_num));
    full = buffer_read(obj_control.buff, buffer_u8);
    var i=0,ii=0,iii=0;
    switch(full)
    {
        case(0):
            repeat(10){repeat(10){repeat(10){
            array3d_set(i,ii,iii,0);
            iii+=1;}ii+=1;iii=0;}i+=1;ii=0;}
        break;
        case(1):
            repeat(10){repeat(10){repeat(10){
            array3d_set(i,ii,iii,buffer_read(obj_control.buff, buffer_u8));
            iii+=1;}ii+=1;iii=0;}i+=1;ii=0;}
        break;
        case(2):
            repeat(10){repeat(10){repeat(10){
            array3d_set(i,ii,iii,1);
            iii+=1;}ii+=1;iii=0;}i+=1;ii=0;}
        break;
    }
                
    if(downloaded==false)
    {
        downloaded = true;
        //scr_create_chunk();
        if(buf==false)
        {
            buf=true;
            my_buf=obj_control.chunk_buffer_num;
            obj_control.chunk_buffer_num += 1;
        }
        scr_pack_verify_send(other.net_myi1,other.net_myi2,other.net_myi3,u_num);
        obj_control.load_num+=1;
    }
    else
    {
        if(buf==false)
        {
            buf=true;
            my_buf=obj_control.chunk_buffer_num;
            obj_control.chunk_buffer_num += 1;
            scr_pack_verify_send(other.net_myi1,other.net_myi2,other.net_myi3,u_num);
        }
    }
}
downloaded=true;
with(obj_chunk){if (downloaded==false){obj_control.downloaded=false;}}
if(downloaded==true){
    chunk_loading = false;load_num = 0;
    if(chunk_mod_load==false)
    {
        x = (chunk_num_x*100)/2;
        y = (chunk_num_y*100)/2;
        z = (chunk_num_z*100)+20;
        dead=false;
        chunk_mod_load = true;
    }
}

show_debug_mes("pack_chunk_recieve");
