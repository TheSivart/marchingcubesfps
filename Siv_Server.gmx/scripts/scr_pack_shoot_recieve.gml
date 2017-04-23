var s_x=buffer_read(buff, buffer_s16);
var s_y=buffer_read(buff, buffer_s16);
var s_z=buffer_read(buff, buffer_s16);
var s_xsp=buffer_read(buff, buffer_s16);
var s_ysp=buffer_read(buff, buffer_s16);
var s_zsp=buffer_read(buff, buffer_s16);
var s_type=buffer_read(buff, buffer_u8);
var s_ss=buffer_read(buff, buffer_s16);
var s_sp=buffer_read(buff, buffer_s16);
var s_size=buffer_read(buff, buffer_s16);

scr_pack_shoot_send(s_x,s_y,s_z,s_xsp,s_ysp,s_zsp,s_type,s_ss,s_sp,s_size);
