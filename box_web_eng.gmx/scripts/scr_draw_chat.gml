///scr_draw_chat();
var i=0;
repeat(chat_num)
{
    draw_text(16,window_get_height()-((i+1)*16)-16-16,str_chat[i]);
    i+=1;
}
if(cam_mouse_toggle==false)
{
    draw_text(16,window_get_height()-32,keyboard_string+"_");
}
