% RR - initial tensor
% (x,y,z) - the axis around which the rotation through the angle beta, x^2+y^2+z^2=1
% XX - rotated tensor
function XX=Rotation_tensor(x,y,z,beta,RR)
MM=Mmatrix(x,y,z,beta); % rotation matrix, Mmatrix - rotation function
MM1=inv(MM);
XX=zeros(3, 3, 3);
for i=1:3
    for j=1:3
        for k=1:3
for a=1:3
    for b=1:3
        for c=1:3    
            XX(i,j,k)=XX(i,j,k)+MM(k,c)*MM(j,b)*MM(i,a)*RR(a,b,c);
        end
    end
end
        end
    end
end
return
