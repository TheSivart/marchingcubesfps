/// camera_draw( znear, zfar)
var _cxfrom, _cyfrom, _czfrom, 
    _cxto,   _cyto,   _czto,
    _cxup,   _cyup,  _czup,
    _cangle, _casp,   _cznear, _czfar;


// Positions
_cxfrom = xs;
_cyfrom = ys;
_czfrom = zs;

// Direction
_cxto = _cxfrom + dx*200;
_cyto = _cyfrom + dy*200;
_czto = _czfrom + dz*200;
/*_cxup = 0;
_cyup = 0;
_czup = 1;*/

// Determine FOV and aspect
_cangle = FOV;
_casp   = view_wview/view_hview;

// Render Settings
_cznear = argument0;
_czfar  = argument1;

var xx, yy, zz, adx, ady;
xx = _cxto - _cxfrom + 0.1;
yy = _cyto - _cyfrom + 0.1;
zz = _czto - _czfrom + 0.1;
adx = lengthdir_x(1, roll)/sqrt(xx*xx + yy*yy + zz*zz);
ady = lengthdir_y(1, roll);
_cxup = - adx*xx*zz - ady*yy;
_cyup = ady*xx - adx*yy*zz;
_czup = adx*(xx*xx + yy*yy);
d3d_set_projection_ext( _cxfrom, _cyfrom, _czfrom, _cxto, _cyto, _czto, 0, 0, 1, _cangle, _casp, _cznear, _czfar );
///////////////////////////////////////////////////////////////