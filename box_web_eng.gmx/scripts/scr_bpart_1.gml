///scr_bpart_1(i1,ii1,iii1);
var i1=argument0,ii1=argument1,iii1=argument2,myret=false;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var xm=x1+((x2-x1)/2),ym=y1+((y2-y1)/2),zm=z1+((z2-z1)/2);
//x+
if(cnz1[1,1]==true&&cnz1[0,1]==false&&cnz1[1,0]==false&&cnz2[1,1]==false)
{
    scr_point_tex(cnz1[1,1]);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,-1,-1,1,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,-1,-1,1,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,-1,-1,1,tx2,ty2,16777215,1);
    myret=true;
}
if(cnz1[1,0]==true&&cnz1[0,0]==false&&cnz1[1,1]==false&&cnz2[1,0]==false)
{
    scr_point_tex(cnz1[1,0]);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z1,-1,1,1,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,-1,1,1,txm,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,-1,1,1,tx2,ty1,16777215,1);
    myret=true;
}
if(cnz2[1,1]==true&&cnz2[0,1]==false&&cnz2[1,0]==false&&cnz1[1,1]==false)
{
    scr_point_tex(cnz2[1,1]);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,-1,-1,-1,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,zm,-1,-1,-1,tx2,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,-1,-1,-1,tx2,tym,16777215,1);
    myret=true;
}
if(cnz2[1,0]==true&&cnz1[1,0]==false&&cnz2[0,0]==false&&cnz2[1,1]==false)
{
    scr_point_tex(cnz2[1,0]);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,ym,z2,-1,1,-1,tx2,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,zm,-1,1,-1,tx2,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,-1,1,-1,txm,ty1,16777215,1);
    myret=true;
}

//x-
if(cnz1[0,1]==true&&cnz1[1,1]==false&&cnz1[0,0]==false&&cnz2[0,1]==false)
{
    scr_point_tex(cnz1[0,1]);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z1,1,-1,1,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,1,-1,1,tx1,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,1,-1,1,tx1,tym,16777215,1);
    myret=true;
}
if(cnz1[0,0]==true&&cnz1[0,1]==false&&cnz1[1,0]==false&&cnz2[0,0]==false)
{
    scr_point_tex(cnz1[0,0]);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z1,1,1,1,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,1,1,1,tx1,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z1,1,1,1,txm,ty1,16777215,1);
    myret=true;
}
if(cnz2[0,1]==true&&cnz2[1,1]==false&&cnz2[0,0]==false&&cnz1[0,1]==false)
{
    scr_point_tex(cnz2[0,1]);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y2,z2,1,-1,-1,txm,ty2,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,1,-1,-1,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,zm,1,-1,-1,tx1,ty2,16777215,1);
    myret=true;
}
if(cnz2[0,0]==true&&cnz2[1,0]==false&&cnz2[0,1]==false&&cnz1[1,1]==false)
{
    scr_point_tex(cnz2[0,0]);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,ym,z2,1,1,-1,tx1,tym,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,xm,y1,z2,1,1,-1,txm,ty1,16777215,1);
    d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,zm,1,1,-1,tx1,ty1,16777215,1);
    myret=true;
}
return(myret);



