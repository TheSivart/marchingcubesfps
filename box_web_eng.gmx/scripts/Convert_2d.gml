///Convert_2d(x,y,xfrom,yfrom,zfrom);
// The script returns the 3d x and y coordinates at z = 0
screenx = 2*argument0/www-1;
screeny = 1-2*argument1/hhh;
mX = dX + uX*screeny + vX*screenx;
mY = dY + uY*screeny + vY*screenx;
mZ = dZ + uZ*screeny + vZ*screenx;

if mZ != 0
begin
    x_3d = argument2 - argument4 * mX / mZ;
    y_3d = argument3 - argument4 * mY / mZ;
end;
else
begin
    x_3d = argument2 - argument4 * mX;
    y_3d = argument3 - argument4 * mY;
end;

