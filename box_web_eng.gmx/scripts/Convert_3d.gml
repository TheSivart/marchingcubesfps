///Convert_3d(targetx,targety,targetz,xfrom,from,zfrom);

var pX, pY, pZ, mm;
pX = argument0 - argument3;
pY = argument1 - argument4;
pZ = argument2 - argument5;
mm = pX*dX + pY*dY + pZ*dZ;
     
if mm > 0
begin
    pX /= mm;
    pY /= mm;
    pZ /= mm;
end;
else 
begin
    x_2d = 0;
    y_2d = -100;
    return 0;
end;

mm = (pX*vX + pY*vY + pZ*vZ) / sqr((www/hhh)*tFOV);
x_2d = (mm+1)/2*www;
mm = (pX*uX + pY*uY + pZ*uZ) / sqr(tFOV);
y_2d = (1-mm)/2*hhh;
return 1;

