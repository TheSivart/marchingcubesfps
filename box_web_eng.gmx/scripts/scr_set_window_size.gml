///scr_set_window_size(width,height);
new_width = argument0;
new_height = argument1;
view_wview[0] = round(new_width);
view_hview[0] = round(new_height);
view_wport[0] = view_wview[0];
view_hport[0] = view_hview[0];
surface_resize(application_surface, view_wview[0], view_hview[0]);
display_set_gui_size(window_get_width(), window_get_height());
