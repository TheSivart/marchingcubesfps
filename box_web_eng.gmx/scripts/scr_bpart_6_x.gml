///scr_bpart_1(i1,ii1,iii1);
var i1=argument0,ii1=argument1,iii1=argument2;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var xm=x1+((x2-x1)/2),ym=y1+((y2-y1)/2),zm=z1+((z2-z1)/2);
var tx1=0,txm=0.25,tx2=0.5,ty1=0,tym=0.25,ty2=0.5;
var lx=0,ly=0,lz=0;
switch(argument3)
{
    case 1: tx1=0;txm=0.25;tx2=0.5;ty1=0;tym=0.25;ty2=0.5; break;
    case 2: tx1=0.5;txm=0.75;tx2=1;ty1=0;tym=0.25;ty2=0.5; break;
    case 3: tx1=0;txm=0.25;tx2=0.5;ty1=0.5;tym=0.75;ty2=1; break;
    case 4: tx1=0.5;txm=0.75;tx2=1;ty1=0.5;tym=0.75;ty2=1; break;
}
//z1 x2 y2
if(cnz1[0,0]==true&&cnz1[1,0]==true&&cnz2[0,0]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==false&&cnz1[1,1]==false&&cnz2[0,1]==false&&cnz2[1,1]==true)
{
    lx=0;ly=1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    lx=-1;ly=1;lz=-1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,tx2,ty2,16777215,1);
    return(true);
}
if(cnz1[0,0]==true&&cnz1[1,0]==true&&cnz2[0,0]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==false&&cnz1[1,1]==false&&cnz2[0,1]==true&&cnz2[1,1]==false)
{
    lx=0;ly=1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    lx=1;ly=1;lz=-1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,tx1,ty2,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,lx,ly,lz,txm,ty2,16777215,1);
    return(true);
}
if(cnz1[0,0]==true&&cnz1[1,0]==true&&cnz2[0,0]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==false&&cnz1[1,1]==true&&cnz2[0,1]==false&&cnz2[1,1]==false)
{
    lx=0;ly=1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    lx=-1;ly=1;lz=1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,tx2,ty2,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txm,ty2,16777215,1);
    return(true);
}
if(cnz1[0,0]==true&&cnz1[1,0]==true&&cnz2[0,0]==true&&cnz2[1,0]==true&&
   cnz1[0,1]==true&&cnz1[1,1]==false&&cnz2[0,1]==false&&cnz2[1,1]==false)
{
    lx=0;ly=1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    lx=1;ly=1;lz=1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,lx,ly,lz,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,lx,ly,lz,tx1,ty2,16777215,1);
    return(true);
}
////
if(cnz1[0,1]==true&&cnz1[1,1]==true&&cnz2[0,1]==true&&cnz2[1,1]==true&&
   cnz1[0,0]==false&&cnz1[1,0]==false&&cnz2[0,0]==false&&cnz2[1,0]==true)
{
    lx=0;ly=-1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    lx=-1;ly=-1;lz=-1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,tx2,ty1,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txm,ty1,16777215,1);
    return(true);
}
if(cnz1[0,1]==true&&cnz1[1,1]==true&&cnz2[0,1]==true&&cnz2[1,1]==true&&
   cnz1[0,0]==false&&cnz1[1,0]==false&&cnz2[0,0]==true&&cnz2[1,0]==false)
{
    lx=0;ly=-1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    lx=1;ly=-1;lz=-1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,lx,ly,lz,txm,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,tx1,ty1,16777215,1);
    return(true);
}
if(cnz1[0,1]==true&&cnz1[1,1]==true&&cnz2[0,1]==true&&cnz2[1,1]==true&&
   cnz1[0,0]==false&&cnz1[1,0]==true&&cnz2[0,0]==false&&cnz2[1,0]==false)
{
    lx=0;ly=-1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    lx=-1;ly=-1;lz=1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,tym,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txm,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,lx,ly,lz,tx2,ty1,16777215,1);
    return(true);
}
if(cnz1[0,1]==true&&cnz1[1,1]==true&&cnz2[0,1]==true&&cnz2[1,1]==true&&
   cnz1[0,0]==true&&cnz1[1,0]==false&&cnz2[0,0]==false&&cnz2[1,0]==false)
{
    lx=0;ly=-1;lz=0;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,lx,ly,lz,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,ty1,16777215,1);
    lx=1;ly=-1;lz=1;
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,lx,ly,lz,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,tx1,ty1,16777215,1);
    
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,lx,ly,lz,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,lx,ly,lz,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,lx,ly,lz,txm,ty1,16777215,1);
    return(true);
}
return(false);



