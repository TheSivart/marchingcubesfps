/// tf_init();
/*
    Texture filtering extension by MantaGames.
    This function must be called to initialize the extension.
*/

var dllname = "TextureFiltering.dll";

// define enum
enum TextureFiltering { NONE = 0, LINEAR = 1, NEAREST_POINT = 2, BILINEAR = 3, ANISOTROPIC = 4 };
enum FilterType { MINFILTER = 0, MAGFILTER = 1, MIPFILTER = 2 };

// define function calls
global._d3dtf_init                  = external_define( dllname, "d3dtx_dll_init", dll_cdecl, ty_real, 1, ty_real );
global._d3dtf_setFiltering          = external_define( dllname, "d3dtx_dll_TexSetFiltering", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real );
global._d3dtf_texSetAniostropyLevel = external_define( dllname, "d3dtx_dll_texSetAnisotropyLevel", dll_cdecl, ty_real, 1, ty_real );

// Call linking function
external_call( global._d3dtf_init, window_device() );

return 0;