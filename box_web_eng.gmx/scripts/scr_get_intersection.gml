///scr_get_intersection(fdst1,fdst2,p1x,p1y,p1z,p2x,p2y,p2z);
var fdst1=argument0,fdst2=argument1,p1x=argument2,p1y=argument3,p1z=argument4,p2x=argument5,p2y=argument6,p2z=argument7;
if ((fdst1 * fdst2) >= 0.0) return false;
if (fdst1 == fdst2) return false;
obj_control.hitx = p1x + (p2x - p1x) * (-fdst1 / (fdst2 - fdst1));
obj_control.hity = p1y + (p2y - p1y) * (-fdst1 / (fdst2 - fdst1));
obj_control.hitz = p1z + (p2z - p1z) * (-fdst1 / (fdst2 - fdst1));
return true;

/*
bool GetIntersection(float fDst1, float fDst2, Vector3 P1, Vector3 P2, ref Vector3 Hit)
{
    if ((fDst1 * fDst2) >= 0.0f) return false;
    if (fDst1 == fDst2) return false;
    Hit = P1 + (P2 - P1) * (-fDst1 / (fDst2 - fDst1));
    return true;
}
