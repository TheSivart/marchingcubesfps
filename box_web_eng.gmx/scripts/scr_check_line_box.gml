///scr_check_line_box(b1x,b1y,b1z,b2x,b2y,b2z,l1x,l1y,l1z,l2x,l2y,l2z);
var ret=false;
obj_control.hitcx = 1000;
obj_control.hitcy = 1000;
obj_control.hitcz = 1000;
obj_control.ray_dis = 1000;
var b1x=argument0,b1y=argument1,b1z=argument2,b2x=argument3,b2y=argument4,b2z=argument5,l1x=argument6,l1y=argument7,l1z=argument8,l2x=argument9,l2y=argument10,l2z=argument11;
if (l2x < b1x && l1x < b1x) return false;
if (l2x > b2x && l1x > b2x) return false;
if (l2y < b1y && l1y < b1y) return false;
if (l2y > b2y && l1y > b2y) return false;
if (l2z < b1z && l1z < b1z) return false;
if (l2z > b2z && l1z > b2z) return false;
if (l1x > b1x && l1x < b2x &&
    l1y > b1y && l1y < b2y &&
    l1z > b1z && l1z < b2z)
{
    obj_control.hitx = l1x;
    obj_control.hity = l1y;
    obj_control.hitz = l1z;
    obj_control.hitcx = l1x;
    obj_control.hitcy = l1y;
    obj_control.hitcz = l1z;
    ret = true;
}



if ((scr_get_intersection(l1x - b1x, l2x - b1x, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 1))
 || (scr_get_intersection(l1y - b1y, l2y - b1y, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 2))
 || (scr_get_intersection(l1z - b1z, l2z - b1z, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 3))
 || (scr_get_intersection(l1x - b2x, l2x - b2x, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 1))
 || (scr_get_intersection(l1y - b2y, l2y - b2y, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 2))
 || (scr_get_intersection(l1z - b2z, l2z - b2z, l1x,l1y,l1z, l2x,l2y,l2z) && scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 3)))
 {
    //obj_control.hitx = obj_control.hitcx;
    //obj_control.hity = obj_control.hitcy;
    //obj_control.hitz = obj_control.hitcz;
    ret = true;
}
obj_control.hitcx = 1000;
obj_control.hitcy = 1000;
obj_control.hitcz = 1000;
obj_control.ray_dis = 1000;
scr_get_intersection(l1x - b1x, l2x - b1x, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 1);
scr_get_intersection(l1y - b1y, l2y - b1y, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 2);
scr_get_intersection(l1z - b1z, l2z - b1z, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 3);
scr_get_intersection(l1x - b2x, l2x - b2x, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 1);
scr_get_intersection(l1y - b2y, l2y - b2y, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 2);
scr_get_intersection(l1z - b2z, l2z - b2z, l1x,l1y,l1z, l2x,l2y,l2z); scr_in_box(b1x,b1y,b1z, b2x,b2y,b2z, 3);
obj_control.hitx = obj_control.hitcx;
obj_control.hity = obj_control.hitcy;
obj_control.hitz = obj_control.hitcz;


return ret;
/*
bool Checklinebox(Vector3 b1, Vector3 b2, Vector3 l1, Vector3 l2, ref Vector3 obj_control.hit)
{
    if (l2x < b1x && l1x < b1x) return false;
    if (l2x > b2x && l1x > b2x) return false;
    if (l2y < b1y && l1y < b1y) return false;
    if (l2y > b2y && l1y > b2y) return false;
    if (l2z < b1z && l1z < b1z) return false;
    if (l2z > b2z && l1z > b2z) return false;
    if (l1x > b1x && l1x < b2x &&
        l1y > b1y && l1y < b2y &&
        l1z > b1z && l1z < b2z)
    {
        obj_control.hit = l1;
        return true;
    }
    if ((scr_get_intersection(l1x - b1x, l2x - b1x, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 1))
      || (scr_get_intersection(l1y - b1y, l2y - b1y, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 2))
      || (scr_get_intersection(l1z - b1z, l2z - b1z, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 3))
      || (scr_get_intersection(l1x - b2x, l2x - b2x, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 1))
      || (scr_get_intersection(l1y - b2y, l2y - b2y, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 2))
      || (scr_get_intersection(l1z - b2z, l2z - b2z, l1, l2, ref obj_control.hit) && scr_in_box(obj_control.hit, b1, b2, 3)))
        return true;

    return false;
}
