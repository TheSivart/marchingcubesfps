/// renderScene()
camera_draw( 1, 32000 );

draw_set_color( c_white );
/*d3d_draw_floor( -512, 512, 0, 512, -512, 0, background_get_texture( tx_floor ), 32, 32 );

d3d_draw_block( -12, 12, 0, 12, -12, 24, background_get_texture( tx_rock ), 1, 1 );

d3d_model_draw( sphereStack, -32, -32, 0, background_get_texture( bkSphere ));
d3d_model_draw( sphereStack, 32, -32, 0, background_get_texture( bkSphere ));
d3d_model_draw( sphereStack, -32, 32, 0, background_get_texture( bkSphere ));
d3d_model_draw( sphereStack, 32, 32, 0, background_get_texture( bkSphere ));

texture_set_repeat( true );
d3d_model_draw( teapot, -64, -64, 0, background_get_texture( bkTeapot ));
d3d_model_draw( teapot, -96, -96, 0, background_get_texture( bkTeapot ));
d3d_model_draw( teapot, -96, -64, 0, background_get_texture( bkTeapot ));
d3d_model_draw( teapot, -64, -96, 0, background_get_texture( bkTeapot ));

//draw_set_alpha_test( true );
//draw_set_alpha_test_ref_value( 150 );
shader_set( sh_alphaTest );
with( objPine ){
    d3d_model_draw( other.pine, x, y, -16, background_get_texture( bk_Tree ));
}
shader_reset();
//draw_set_alpha_test( false );*/

// Draw map
texture_set_repeat( true );
shader_set( sh_alphaTest );
d3d_model_draw( map_Trees, 0, 0, 0, background_get_texture( bk_Tree ));
d3d_model_draw( map_Grass, 0, 0, 0, background_get_texture( GrassBlade ));
shader_reset();

shader_set( sh_textureRepeat );
d3d_model_draw( map_Terrain, 0, 0, 0, background_get_texture( ch_grass_02_col ));
shader_reset();

d3d_model_draw( map_Cargo, 0, 0, 0, background_get_texture( CargoContainer_1_D2 ));
d3d_model_draw( map_Boulder, 0, 0, 0, background_get_texture( Boulder_D ));
d3d_model_draw( map_Concrete, 0, 0, 0, background_get_texture( ch_concrete_05_col ));
d3d_model_draw( map_CWAll, 0, 0, 0, background_get_texture( ch_concretewall07_col )); 

shader_set( sh_SkyScatter );
d3d_model_draw( global.sky, 0,0 ,0, background_get_texture( skytex ));
shader_reset();