///scr_chunk_block(i1,ii1,iii1);
var i1=argument0,ii1=argument1,iii1=argument2,ctexid=argument3;
var x1=i1*bsize,y1=ii1*bsize,z1=(iii1)*bsize,x2=(i1+1)*bsize,y2=(ii1+1)*bsize,z2=((iii1+1))*bsize;
var xm=x1+((x2-x1)/2),ym=y1+((y2-y1)/2),zm=z1+((z2-z1)/2);
var txm=0,txl=0.5,tym=0,tyl=0.5;
var iix=0,iiy=0,exter=true,exter2=true;
repeat(2)
{
    repeat(2)
    {
        cnz1[iix,iiy]=scr_check_world_corner(i1+iix,ii1+iiy,iii1);
        cnz2[iix,iiy]=scr_check_world_corner(i1+iix,ii1+iiy,iii1+1);
        if(cnz1[iix,iiy]==false||cnz2[iix,iiy]==false){exter=false;}
        if(cnz1[iix,iiy]==true||cnz2[iix,iiy]==true){exter2=false;}
        iiy+=1;
    }
    iix+=1;
    iiy=0;
}
if(exter==true||exter2==true){return(false);}

//just corners
///*
ctexid=2
var pcan=false;
pcan=max(pcan,scr_bpart_1(i1,ii1,iii1));
pcan=max(pcan,scr_bpart_1_2(i1,ii1,iii1));
//just edges
pcan=max(pcan,scr_bpart_2_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_2_x_2(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_2_z(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_2_z_2(i1,ii1,iii1,ctexid));
//full side
pcan=max(pcan,scr_bpart_3(i1,ii1,iii1,ctexid));
//part side
pcan=max(pcan,scr_bpart_4_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_4_y(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_4_z(i1,ii1,iii1,ctexid));
//Full corner
pcan=max(pcan,scr_bpart_5(i1,ii1,iii1,ctexid));
//floor and then one
pcan=max(pcan,scr_bpart_6_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_6_y(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_6_z(i1,ii1,iii1,ctexid));
//floor and then one more
pcan=max(pcan,scr_bpart_7_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_7_y(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_7_z(i1,ii1,iii1,ctexid));
//bottom corner then one on the side
//pcan=max(pcan,scr_bpart_8_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_8(i1,ii1,iii1,ctexid));
//bottom corner then the other one on the side
pcan=max(pcan,scr_bpart_9(i1,ii1,iii1,ctexid));
//bottom with two top corners
pcan=max(pcan,scr_bpart_10_x(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_10_y(i1,ii1,iii1,ctexid));
pcan=max(pcan,scr_bpart_10(i1,ii1,iii1,ctexid));


//points
if(pcan==false&&obj_control.debug==true)
{
    scr_pointlist(i1,ii1,iii1);
}
