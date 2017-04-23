///scr_point_block(x1,y1,z1,x2,y2,z2,type);
var x1=argument0,y1=argument1,z1=argument2,x2=argument3,y2=argument4,z2=argument5,arg_type=argument6;
//var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var txm=0,txl=0.5,tym=0,tyl=0.5;
if(arg_type==1){txm=0;txl=0.5;tym=0.5;tyl=1;}else{txm=0.5;txl=1;tym=0;tyl=0.5;}
//if(txm==-1||txl==-1||tym==-1||tyl==-1){show_message(argument3)}
//x+
//if(scr_check_world_block(i1+1,ii1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z2,1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z2,1,0,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z1,1,0,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z2,1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z1,1,0,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z1,1,0,0,txm,tyl,16777215,1);
}

//x-
//if(scr_check_world_block(i1-1,ii1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z1,-1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z1,-1,0,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z2,-1,0,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z1,-1,0,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z2,-1,0,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z2,-1,0,0,txm,tyl,16777215,1);
}

//z-
//if(scr_check_world_block(i1,ii1,iii1-1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z1,0,0,-1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z1,0,0,-1,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z1,0,0,-1,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z1,0,0,-1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z1,0,0,-1,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z1,0,0,-1,txm,tyl,16777215,1);
}

//z+
//if(scr_check_world_block(i1,ii1,iii1+1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z2,0,0,1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z2,0,0,1,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z2,0,0,1,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z2,0,0,1,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z2,0,0,1,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z2,0,0,1,txm,tyl,16777215,1);
}

//y+
//if(scr_check_world_block(i1,ii1+1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z1,0,1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z2,0,1,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z2,0,1,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x1,y2,z1,0,1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z2,0,1,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y2,z1,0,1,0,txm,tyl,16777215,1);
}

//y-
//if(scr_check_world_block(i1,ii1-1,iii1)==false)
{
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z1,0,-1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z1,0,-1,0,txl,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z2,0,-1,0,txl,tyl,16777215,1);

d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z1,0,-1,0,txm,tym,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x2,y1,z2,0,-1,0,txl,tyl,16777215,1);
d3d_model_vertex_normal_texture_color(mod_point,x1,y1,z2,0,-1,0,txm,tyl,16777215,1);
}

//d3d_model_block(mod_point,i1*bsize,ii1*bsize,(iii1)*bsize,(i1+1)*bsize,(ii1+1)*bsize,((iii1+1))*bsize,1,1);
