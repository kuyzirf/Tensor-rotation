%Write your tensor in dd form
dd=[[0,0,0,0,17,0];[0,0,0,17,0,0];[15.7,15.7,6.8,0,0,0]]%batio3 example
%%%
RR = zeros(3, 3, 3);
RR(:,:,1)=[[dd(1,1),dd(1,6),dd(1,5)];[dd(2,1),dd(2,6),dd(2,5)];[dd(3,1),dd(3,6),dd(3,5)]];
RR(:,:,2)=[[dd(1,6),dd(1,2),dd(1,4)];[dd(2,6),dd(2,2),dd(2,4)];[dd(3,6),dd(3,2),dd(3,4)]];
RR(:,:,3)=[[dd(1,5),dd(1,4),dd(1,3)];[dd(2,5),dd(2,4),dd(2,3)];[dd(3,5),dd(3,4),dd(3,3)]];
%First rotaton
x=0;
y=1;
z=0;
beta=pi/2;
%After rotation(try to name matrix after last rotation XX)
XX=Rotation_tensor(x,y,z,beta,RR);
%Convert to dd form
dd_new=[[0,0,0,0,0,0];[0,0,0,0,0,0];[0,0,0,0,0,0]];
dd_new(1,1)=XX(1,1,1);
dd_new(1,2)=XX(1,2,2);
dd_new(1,3)=XX(1,3,3);
dd_new(1,4)=XX(1,3,2);
dd_new(1,5)=XX(1,3,1);
dd_new(1,6)=XX(1,2,1);

dd_new(2,1)=XX(2,1,1);
dd_new(2,2)=XX(2,2,2);
dd_new(2,3)=XX(2,3,3);
dd_new(2,4)=XX(2,3,2);
dd_new(2,5)=XX(2,3,1);
dd_new(2,6)=XX(2,2,1);

dd_new(3,1)=XX(3,1,1);
dd_new(3,2)=XX(3,2,2);
dd_new(3,3)=XX(3,3,3);
dd_new(3,4)=XX(3,3,2);
dd_new(3,5)=XX(3,3,1);
dd_new(3,6)=XX(3,2,1);
dd_new
%%
