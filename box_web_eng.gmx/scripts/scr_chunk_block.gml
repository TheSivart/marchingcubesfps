///scr_chunk_block(i1,ii1,iii1,id);
var i1=argument0,ii1=argument1,iii1=argument2;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var txm=0,txl=0.5,tym=0,tyl=0.5;
switch(argument3)
{
    case 1: txm=0;txl=0.5;tym=0;tyl=0.5; break;
    case 2: txm=0.5;txl=1;tym=0;tyl=0.5; break;
    case 3: txm=0;txl=0.5;tym=0.5;tyl=1; break;
    case 4: txm=0.5;txl=1;tym=0.5;tyl=1; break;
}
//if(txm==-1||txl==-1||tym==-1||tyl==-1){show_message(argument3)}
//x+
if(scr_check_world_block(i1+1,ii1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z2,1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z2,1,0,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z1,1,0,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z2,1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z1,1,0,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z1,1,0,0,txm,tyl,16777215,1);
}

//x-
if(scr_check_world_block(i1-1,ii1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z1,-1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z1,-1,0,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z2,-1,0,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z1,-1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z2,-1,0,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z2,-1,0,0,txm,tyl,16777215,1);
}

//z-
if(scr_check_world_block(i1,ii1,iii1-1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z1,0,0,-1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z1,0,0,-1,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z1,0,0,-1,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z1,0,0,-1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z1,0,0,-1,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z1,0,0,-1,txm,tyl,16777215,1);
}

//z+
if(scr_check_world_block(i1,ii1,iii1+1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z2,0,0,1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z2,0,0,1,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z2,0,0,1,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z2,0,0,1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z2,0,0,1,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z2,0,0,1,txm,tyl,16777215,1);
}

//y+
if(scr_check_world_block(i1,ii1+1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z1,0,1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z2,0,1,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z2,0,1,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x1,y2,z1,0,1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z2,0,1,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y2,z1,0,1,0,txm,tyl,16777215,1);
}

//y-
if(scr_check_world_block(i1,ii1-1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z1,0,-1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z1,0,-1,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z2,0,-1,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z1,0,-1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x2,y1,z2,0,-1,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_chunk,x1,y1,z2,0,-1,0,txm,tyl,16777215,1);
}

//d3d_model_block(mod_chunk,i1*bsize,ii1*bsize,(iii1)*bsize,(i1+1)*bsize,(ii1+1)*bsize,((iii1+1))*bsize,1,1);
