///scr_set_window_size(width,height);
new_width = round(argument0);
new_height = round(argument1);
view_wview[0] = new_width;
view_hview[0] = new_height;
view_wport[0] = new_width;
view_hport[0] = new_height;
surface_resize(application_surface, new_width, new_height);
display_set_gui_size(new_width, new_height);
room_set_width(rm_server,new_width);
room_set_height(rm_server,new_height);
