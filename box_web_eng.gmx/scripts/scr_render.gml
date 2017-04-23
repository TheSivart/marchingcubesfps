///scr_render();
scr_draw_chunks();

scr_draw_bombs();

scr_draw_players();

scr_draw_planet();

//ALPHA OBJECTS DRAW THEM LAST
//d3d_draw_block(0,0,0,chunk_num_x*100,chunk_num_y*100,(chunk_num_z*100)+1,tex_bound,110,110);
//d3d_draw_block(0,chunk_num_y*100,0,chunk_num_x*100,0,chunk_num_z*100,tex_bound,110,110);

scr_draw_ex1();
scr_draw_ex2();
