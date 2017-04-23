/// camera_init()
// Camera
global.CameraMode = 0;

// Position
cx = 1313.28;
cy = 694.76;
cz = 40.00;
xs = 1313.28;
ys = 694.76;
zs = 40.00;
z  = 40.00;



// Orientation
dx = -0.92;
dy = 0.31;
dz = -0.22;
dxa = 0;
dya = 0;
dza = 0;


// alternate orientation
pitch = 0;
dir   = 0;
roll  = 0;
FOV   = 80;

    // Update View Vector
    dxa = cos( degtorad( -dir ) ) * cos( degtorad( pitch ) );
    dya = sin( degtorad( -dir ) ) * cos( degtorad( pitch ) );
    dza = sin( degtorad( pitch ) );

    
dirs = 0;
pitchs = 0;

// mouse lock
M_LOCK_X = 0;
M_LOCK_Y = 0;

// nearfar
NEAR = 1;
FAR  = 2048;