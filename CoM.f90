! This program calculates the center of mass (CM) for a series of data points stored in a file (old_config.dat)
! This code is written in Fortran 77 or later

program com
integer k
open (09, file = 'C:\Users\user\Downloads\old_config.dat', status='read')
i=0
xcm=0 
ycm=0 
zcm=0

do 
	
	read(09,*,IOSTAT=k)x,y,z,d1,d2,d3,d4,d5,d6
	if (k>0) then
    exit
	else if (k<0) then
    exit
    else
	print *, 'x=',x,'y=',y,'z=',z 
    
    xcm = xcm+x 
    ycm = ycm+y  
    zcm = zcm+z
	i=i+1
    print *, xcm,ycm,zcm
	end if
end do
print *,i
xcm=xcm/i
ycm=ycm/i
zcm=zcm/i
print*,'xcm=',xcm,'ycm=',ycm,'zcm=',zcm
end program
