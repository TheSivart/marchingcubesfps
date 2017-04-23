// draw_text_shadow_colour( x, y, string, c )
draw_set_color( c_black );
draw_text( argument0+1, argument1+1, argument2 );
draw_set_color( argument3 );
draw_text( argument0, argument1, argument2 );
draw_set_color( c_white );