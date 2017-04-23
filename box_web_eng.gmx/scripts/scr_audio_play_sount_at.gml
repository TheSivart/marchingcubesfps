///scr_audio_play_sount_at(x,y,sound);
var tdis=point_distance(obj_control.x,obj_control.y,argument0,argument1);
var tdir=point_direction(obj_control.x,obj_control.y,argument0,argument1);
var ttdir=angle_difference(tdir, obj_control.direction)-90;
audio_play_sound_at(argument2,0+lengthdir_x(tdis,ttdir),0+lengthdir_y(tdis,ttdir), 0, 100, 300, 1, false, 1);
