///scr_get_normals(x1,y1,z1,x2,y2,z2,x3,y3,z3);
var vector1x=argument3-argument0;
var vector1y=argument4-argument1;
var vector1z=argument5-argument2;

var vector2x=argument6-argument0;
var vector2y=argument7-argument1;
var vector2z=argument8-argument2;

var crossx=vector1y*vector2z-vector1z*vector2y;
var crossy=-vector1x*vector2z+vector1z*vector2x;
var crossz=vector1x*vector2y-vector1y*vector2x;

var crossproductlength=sqrt(sqr(crossx)+sqr(crossy)+sqr(crossz));
if crossproductlength!=0
{
normal_x=crossx/crossproductlength;
normal_y=crossy/crossproductlength;
normal_z=crossz/crossproductlength;
}
else
{
normal_x=0;
normal_y=0;
normal_z=0;
}

