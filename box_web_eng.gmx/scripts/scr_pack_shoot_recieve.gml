net_sock=buffer_read(buff, buffer_u8);
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
if (net_sock!=sock)
{
    var obj = instance_create(s_x,s_y,obj_bomb_dummy);
    obj.z = s_z;
    obj.xsp=s_xsp/100;
    obj.ysp=s_ysp/100;
    obj.zsp=s_zsp/100;
    obj.type=s_type;
    obj.ss=s_ss/100;
    obj.sp=s_sp/100;
    obj.size=s_size/100;
    scr_audio_play_sount_at(s_x,s_y,snd_gunshot);
}

show_debug_mes("pack_shoot_recieve");
