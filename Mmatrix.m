% Rotation matrix (x,y,z-axis, beta-angle of rotation)
function MM=Mmatrix(x,y,z,beta) 
MM=zeros(3,3);

MM(1,1)=cos(beta)+(1-cos(beta))*x.^2;
MM(1,2)=(1-cos(beta))*x*y-sin(beta)*z;
MM(1,3)=(1-cos(beta))*x*z+sin(beta)*y;

MM(2,1)=(1-cos(beta))*x*y+sin(beta)*z;
MM(2,2)=cos(beta)+(1-cos(beta))*y.^2;
MM(2,3)=(1-cos(beta))*y*z-sin(beta)*x;

MM(3,1)=(1-cos(beta))*x*z-sin(beta)*y;
MM(3,2)=(1-cos(beta))*z*y+sin(beta)*x;
MM(3,3)=cos(beta)+(1-cos(beta))*z.^2;


return
