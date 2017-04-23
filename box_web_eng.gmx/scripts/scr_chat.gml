///scr_chat(chat);
var i=obj_control.chat_num-1;
repeat(obj_control.chat_num-1)
{
    if(i>=1){obj_control.str_chat[i]=obj_control.str_chat[i-1];}
    i-=1;
}
obj_control.str_chat[0]=string(argument0);
