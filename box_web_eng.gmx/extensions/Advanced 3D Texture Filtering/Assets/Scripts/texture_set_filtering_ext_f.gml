/// texture_set_filtering_ext_f( filtering type, sampler index, filterType );
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
    
    --------------------------------
    sampler index:
        refers to the sampler used for rendering. (I.e using shader_get_sampler_index( ... ) )
        
    --------------------------------
    filterType:
        refers to which filter you are modifying settings for. Different filters can have different settings depending on your
        needs. These are the filters you can modify:
        
        FilterType { 
        - MinFilter =0: the filter applied to textures which are squashed.
        - MagFilter =1: the filter applied to textures which are stretched or magnified.
        - MipFitler =2: Used when the texture is mipmapped. (Mipmapping is the process of splitting a texture up into smaller sized intervals to reduce grain when a texture is viewed at distance.)
        }
        
    Usage:
        texture_set_filtering_ext_f(    TextureFiltering.ANISOTROPIC, 
                                        shader_get_sampler_id( sh_myShader, "depthBuffer" ), 
                                        FilterType.MinFilter 
                                    );
        
    Optimisations:
        - Only call this function when the state needs to be changed. Ideally only when 3D starts
        or an option is changes. Changing isn't slow, however it is ideal not to
        constantly change during runtime.
        - The setting can be changed in real-time by simply calling this function.
*/
show_debug_message( string( argument1 ));
return external_call( global._d3dtf_setFiltering, argument0, argument1, argument2 );