//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float dist;
varying float height;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    
    dist = (gm_Matrices[MATRIX_WORLD_VIEW] * object_space_pos).z;
    height = gl_Position.z;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying float dist;
varying float height;

void main()
{
    float fo = max(0.0, min(1.0, (dist)/(6200.0)));
    vec3 fco = vec3(0.7) + 0.6*vec3(1.0,0.8,0.5);
    gl_FragColor = mix(/*v_vColour * texture2D( MipMap, v_vTexcoord */ 
                        v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ), 
                        vec4(fco,1.0), fo );
}

