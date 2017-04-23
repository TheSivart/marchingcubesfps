str="Server running.";
str+="#";
str+="Players:"+string(instance_number(obj_sock));
str+="#";
str+="full0:"+string(full0);
str+=",full1:"+string(full1);
str+=",full2:"+string(full2);
str+="#";
with(obj_sock)
{
    other.str+=string(name)+","+string(ip)+","+string(x)+","+string(y)+","+string(z);
    other.str+="#";
}
draw_text(10,10,str);
