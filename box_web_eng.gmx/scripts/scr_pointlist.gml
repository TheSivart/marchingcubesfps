///scr_pointlist(i1,ii1,iii1);
var i1=argument0,ii1=argument1,iii1=argument2;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var xm=x1+((x2-x1)/2),ym=y1+((y2-y1)/2),zm=z1+((z2-z1)/2);
scr_point_block(xm-1,ym-1,zm-1,xm+1,ym+1,zm+1,1);
var tstr="";
tstr+="cnz1[0,0]="+string(cnz1[0,0]);
tstr+=" ,cnz1[0,1]="+string(cnz1[0,1]);
tstr+=" ,cnz1[1,0]="+string(cnz1[1,0]);
tstr+=" ,cnz1[1,1]="+string(cnz1[1,1]);
tstr+=" ,cnz2[0,0]="+string(cnz2[0,0]);
tstr+=" ,cnz2[0,1]="+string(cnz2[0,1]);
tstr+=" ,cnz2[1,0]="+string(cnz2[1,0]);
tstr+=" ,cnz2[1,1]="+string(cnz2[1,1]);
scr_debug_point(x+5+xm,y+5+ym,z+5+zm,tstr);
if(cnz1[0,0]==true)
{
    scr_point_block(x1-1,y1-1,z1-1,x1+1,y1+1,z1+1,0);
}
if(cnz1[0,1]==true)
{
    scr_point_block(x1-1,y2-1,z1-1,x1+1,y2+1,z1+1,0);
}
if(cnz1[1,0]==true)
{
    scr_point_block(x2-1,y1-1,z1-1,x2+1,y1+1,z1+1,0);
}
if(cnz1[1,1]==true)
{
    scr_point_block(x2-1,y2-1,z1-1,x2+1,y2+1,z1+1,0);
}

if(cnz2[0,0]==true)
{
    scr_point_block(x1-1,y1-1,z2-1,x1+1,y1+1,z2+1,0);
}
if(cnz2[0,1]==true)
{
    scr_point_block(x1-1,y2-1,z2-1,x1+1,y2+1,z2+1,0);
}
if(cnz2[1,0]==true)
{
    scr_point_block(x2-1,y1-1,z2-1,x2+1,y1+1,z2+1,0);
}
if(cnz2[1,1]==true)
{
    scr_point_block(x2-1,y2-1,z2-1,x2+1,y2+1,z2+1,0);
}
