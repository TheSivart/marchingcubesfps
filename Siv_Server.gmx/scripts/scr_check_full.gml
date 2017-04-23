///scr_check_full();
var i=-1,ii=-1,iii=-1,check_full0=true,check_full2=true,icheck;
repeat(12)
{
    repeat(12)
    {
        repeat(12)
        {
            //first check to make sure that i,ii,iii is in the boundrys
            if(i>=0&&i<=9&&ii>=0&&ii<=9&&iii>=0&&iii<=9)
            {
                //if in just do a simple array check
                icheck=array3d_get(i,ii,iii);
            }
            else
            {
                //if out then find the correct chunk and check that array
                //first find the edge thats out
                /////////////////////
                var ret=3;
                icheck=0;
                var xoff=i,yoff=ii,zoff=iii,cxoff=0,cyoff=0,czoff=0,mx=9;
                if (i<0){if(myi1>0){xoff=mx;cxoff=-1;}else{icheck=ret;}}
                if (i>mx){if(myi1<obj_control.chunk_num_x-1){xoff=0;cxoff=1;}else{icheck=ret;}}
                if (ii<0){if(myi2>0){yoff=mx;cyoff=-1;}else{icheck=ret;}}
                if (ii>mx){if(myi2<obj_control.chunk_num_y-1){yoff=0;cyoff=1;}else{icheck=ret;}}
                if (iii<0){if(myi3>0){zoff=mx;czoff=-1;}else{icheck=ret;}}
                if (iii>mx){if(myi3<obj_control.chunk_num_z-1){zoff=0;czoff=1;}else{icheck=ret;}}
                
                if(icheck!=3)
                {
                    with(obj_control){with(array3d_get(other.myi1+cxoff,other.myi2+cyoff,other.myi3+czoff)){
                    obj_control.icheck=array3d_get(xoff,yoff,zoff)}}
               
                    icheck=obj_control.icheck;
                }
                else
                {
                    icheck=0;
                }
            }            
            
            if(icheck!=0){check_full0=false;}
            if(icheck==0){check_full2=false;}
            if(check_full0==false&&check_full2==false)
            {
                full=1;
                exit;
            }
            iii+=1;
        }
        ii+=1;
        iii=-1;
    }
    i+=1;
    ii=-1;
}
if(check_full0==true)
{
    full = 0;
}
if(check_full2==true)
{
    full = 2;
}


