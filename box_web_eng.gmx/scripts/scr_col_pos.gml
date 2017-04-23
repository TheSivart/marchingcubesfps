///scr_col_pos(x,y,z);
with(obj_control)
{
    var wid=3,len=3,z1=3,z2=15,z3=7,i1=floor(argument0/100),i2=floor(argument1/100),i3=floor(argument2/100);
    var obj=scr_get_chunk(i1,i2,i3);
    var ret=false,che=false;
    if (obj!=false)
    {
        with(obj)
        {
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
            
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
            
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
            che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
        }
    }
    var xx=0,yy=0,zz=0,ii=0;
    repeat(8)
    {
        ii+=1;
        switch(ii)
        {
            case 1: xx=wid;yy=len;zz=z1; break;
            case 2: xx=wid;yy=-len;zz=z1; break;
            case 3: xx=-wid;yy=len;zz=z1; break;
            case 4: xx=-wid;yy=-len;zz=z1; break;
            case 5: xx=wid;yy=len;zz=-z2; break;
            case 6: xx=wid;yy=-len;zz=-z2; break;
            case 7: xx=-wid;yy=len;zz=-z2; break;
            case 8: xx=-wid;yy=-len;zz=-z2; break;
        }
        var ii1=floor((argument0+xx)/100),ii2=floor((argument1+yy)/100),ii3=floor((argument2+zz)/100);
        if (ii1!=i1||ii2!=i2||ii3!=i3)
        {
            var obj2=scr_get_chunk(ii1,ii2,ii3);
            var ret=false,che=false;
            if (obj2!=false)
            {//show_message(string(obj)+" "+string(obj2));
                with(obj2)
                {
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2+z1-z)/10));if che==true return che;
                    
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z2-z)/10));if che==true return che;
                    
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0+wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1+len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
                    che=scr_check_block(floor((argument0-wid-x)/10),floor((argument1-len-y)/10),floor((argument2-z3-z)/10));if che==true return che;
                    if ret==true {return(ret);}
                }
            }
        }
    }
    return(false);
}
