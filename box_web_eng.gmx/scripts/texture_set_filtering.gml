/// texture_set_filtering( filtering type );
/*
    -- Texture filtering extension by MantaGames. --
    
    Enables texture filtering on the base sampler (id 0).
    Filtering types:

      TextureFiltering { 
        NONE                = 0, 
        LINEAR              = 1, 
        NEAREST_POINT       = 2, 
        BILINEAR            = 3, 
        ANISOTROPIC         = 4 
      }
      
    NONE will disable filtering.
    - NEAREST_POINT = fastest method of filtering.
    - ANISOTROPIC   = best looking (when anisotropy value is increased.)
    
    Usage:
        texture_set_filtering( TextureFiltering.ANISOTROPIC );
        
    Optimisations:
        - Only call this function when the state needs to be changed. Ideally only when 3D starts
        or an option is changes. Changing isn't slow, however it is ideal not to
        constantly change during runtime.
        - The setting can be changed in real-time by simply calling this function.
*/
return texture_set_filtering_ext( argument0, 0 );
