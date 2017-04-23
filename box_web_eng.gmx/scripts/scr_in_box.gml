///scr_in_box(b1x,b1y,b1z,b2x,b2y,b2z,axis);
var b1x=argument0,b1y=argument1,b1z=argument2,b2x=argument3,b2y=argument4,b2z=argument5,axis=argument6,ret=false;
if (axis == 1 && obj_control.hitz > b1z && obj_control.hitz < b2z && obj_control.hity > b1y && obj_control.hity < b2y) ret = true;
if (axis == 2 && obj_control.hitz > b1z && obj_control.hitz < b2z && obj_control.hitx > b1x && obj_control.hitx < b2x) ret = true;
if (axis == 3 && obj_control.hitx > b1x && obj_control.hitx < b2x && obj_control.hity > b1y && obj_control.hity < b2y) ret = true;
if (ret == true)
{
    var tdis=point_distance_3d(obj_control.hitx,obj_control.hity,obj_control.hitz,obj_control.x,obj_control.y,obj_control.z);
    if (tdis<obj_control.ray_dis)
    {
        obj_control.ray_dis = tdis;
        obj_control.hitcx = obj_control.hitx;
        obj_control.hitcy = obj_control.hity;
        obj_control.hitcz = obj_control.hitz;
    }
}
return(ret);
/*
bool Inbox(Vector3 obj_control.hit, Vector3 b1, Vector3 b2, int axis)
{
    if (axis == 1 && obj_control.hitz > b1z && obj_control.hitz < b2z && obj_control.hity > b1y && obj_control.hity < b2y) return true;
    if (axis == 2 && obj_control.hitz > b1z && obj_control.hitz < b2z && obj_control.hitx > b1x && obj_control.hitx < b2x) return true;
    if (axis == 3 && obj_control.hitx > b1x && obj_control.hitx < b2x && obj_control.hity > b1y && obj_control.hity < b2y) return true;
    return false;
}
