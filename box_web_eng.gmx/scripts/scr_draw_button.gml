///scr_draw_button(x,y,string);
var tx=argument0,ty=argument1,tstr=argument2,strw=string_width(tstr)/2,strh=string_height(tstr)/2;
var tx1=tx-strw-5,ty1=ty-strh-5,tx2=tx+strw+5,ty2=ty+strh+5;
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

if(scr_mouse_box(tx1,ty1,tx2,ty2)==true)
{
    draw_set_color(c_aqua);
    draw_rectangle(tx1-2,ty1-2,tx2+2,ty2+2,false);
    draw_set_color(c_black);
    draw_rectangle(tx1-2,ty1-2,tx2+2,ty2+2,true);
    draw_text(tx,ty,tstr);
    if(mouse_check_button_pressed(mb_left)==true)
    {
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        return(true);
    }
}
else
{
    draw_rectangle(tx1,ty1,tx2,ty2,true);
    draw_text(tx,ty,tstr);
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);

return(false);
