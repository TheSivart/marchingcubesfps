///scr_bpart_1(i1,ii1,iii1);
var i1=argument0,ii1=argument1,iii1=argument2;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var xm=x1+((x2-x1)/2),ym=y1+((y2-y1)/2),zm=z1+((z2-z1)/2);
var txm=0,txl=0.5,tym=0,tyl=0.5;
var lx=0,ly=0,lz=1;

///*
//z1 x2 y2
if(cnz1[0,0]==true&&cnz1[0,1]==true&&cnz1[1,1]==true&&cnz1[1,0]==false&&
   cnz2[0,1]==false&&cnz2[1,1]==true&&cnz2[1,0]==false&&cnz2[0,0]==false)
{
    lx=0.71;ly=0;lz=0.71;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    
    lx=-0.58;ly=-0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    
    lx=-0.58;ly=-0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    
    lx=0.71;ly=-0.71;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tym,16777215,1);
    
}

//z1 x1 y2
if(cnz1[0,0]==false&&cnz1[0,1]==true&&cnz1[1,1]==true&&cnz1[1,0]==true&&
   cnz2[0,1]==true&&cnz2[1,1]==false&&cnz2[1,0]==false&&cnz2[0,0]==false)
{
    lx=-0.71;ly=0;lz=0.71;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txl,tym,16777215,1);

    lx=0.58;ly=-0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txl,tym,16777215,1);
    
    lx=0.58;ly=-0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    
    lx=-0.71;ly=-0.71;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    
}

//z1 x2 y1
if(cnz1[0,0]==true&&cnz1[0,1]==true&&cnz1[1,1]==false&&cnz1[1,0]==true&&
   cnz2[0,1]==false&&cnz2[1,1]==false&&cnz2[1,0]==true&&cnz2[0,0]==false)
{
    lx=0.71;ly=0;lz=0.71;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txl,tym,16777215,1);
    lx=-0.58;ly=0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txl,tym,16777215,1);
    lx=-0.58;ly=0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    lx=0.71;ly=0.71;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);    
}
//txm=0.5;txl=1;tym=0;tyl=0.5;
//z1 x1 y1
if(cnz1[0,0]==true&&cnz1[0,1]==false&&cnz1[1,1]==true&&cnz1[1,0]==true&&
   cnz2[0,1]==false&&cnz2[1,1]==false&&cnz2[1,0]==false&&cnz2[0,0]==true)
{
    //var norm_str="";
    //scr_get_normals(x2,y2,zm,xm,y2,z1,x2,y1,zm);norm_str+="lx="+string(normal_x)+";ly="+string(normal_y)+";lz="+string(normal_z)+";";
    //lx=normal_x;ly=normal_y;lz=normal_z;
    lx=-0.71;ly=0;lz=0.71;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    //scr_get_normals(x2,y1,zm,xm,y2,z1,x1,ym,z2);norm_str+="lx="+string(normal_x)+";ly="+string(normal_y)+";lz="+string(normal_z)+";";
    //lx=normal_x;ly=normal_y;lz=normal_z;
    lx=0.58;ly=0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    //scr_get_normals(x2,y1,zm,x1,ym,z2,xm,y1,z2);norm_str+="lx="+string(normal_x)+";ly="+string(normal_y)+";lz="+string(normal_z)+";";
    //lx=normal_x;ly=normal_y;lz=normal_z;
    lx=0.58;ly=0.58;lz=0.58;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    //scr_get_normals(xm,y2,z1,x1,ym,z1,x1,ym,z2);norm_str+="lx="+string(normal_x)+";ly="+string(normal_y)+";lz="+string(normal_z)+";";
    //lx=normal_x;ly=normal_y;lz=normal_z;
    lx=-0.71;ly=0.71;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tym,16777215,1);
    //clipboard_set_text(norm_str);
}
//*/
/*
//z2 x2 y2
if(cnz2[0,0]==true&&cnz2[0,1]==true&&cnz2[1,1]==true&&cnz2[1,0]==false&&
   cnz1[0,1]==false&&cnz1[1,1]==true&&cnz1[1,0]==false&&cnz1[0,0]==false)
{
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);

    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    
}
//z2 x1 y2
if(cnz2[0,0]==false&&cnz2[0,1]==true&&cnz2[1,1]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==true&&cnz1[1,1]==false&&cnz1[1,0]==false&&cnz1[0,0]==false)
{
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);

    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tym,16777215,1);
    
}
//z2 x2 y1
if(cnz2[0,0]==true&&cnz2[0,1]==true&&cnz2[1,1]==false&&cnz2[1,0]==true&&
   cnz1[0,1]==false&&cnz1[1,1]==false&&cnz1[1,0]==true&&cnz1[0,0]==false)
{
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);

    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,txl,tym,16777215,1);
    
}
//z2 x1 y1
if(cnz2[0,0]==true&&cnz2[0,1]==false&&cnz2[1,1]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==false&&cnz1[1,1]==false&&cnz1[1,0]==false&&cnz1[0,0]==true)
{
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);

    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txl,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tyl,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txm,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,txl,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,txl,tyl,16777215,1);
    
}
