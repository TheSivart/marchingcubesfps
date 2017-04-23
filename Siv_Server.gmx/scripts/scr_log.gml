///scr_log(log);
var i=obj_control.log_num-1;
repeat(obj_control.log_num-1)
{
    if(i>=1){obj_control.str_log[i]=obj_control.str_log[i-1];}
    i-=1;
}
obj_control.str_log[0]=string(argument0);
