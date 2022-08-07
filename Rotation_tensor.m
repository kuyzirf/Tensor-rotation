%поворот тензора 
function XX=Rotation_tensor(x,y,z,beta,RR)
MM=Mmatrix(x,y,z,beta);
MM1=inv(MM);
XX=zeros(3, 3, 3);
for i=1:3
    for j=1:3
        for k=1:3
for a=1:3
    for b=1:3
        for c=1:3    
            XX(i,j,k)=XX(i,j,k)+MM(k,c)*MM(j,b)*MM(i,a)*RR(a,b,c);
            %XX(i,j,k)=XX(i,j,k)+MM(c,k)*MM(b,j)*MM(a,i)*RR(a,b,c);
        end
    end
end
        end
    end
end
return