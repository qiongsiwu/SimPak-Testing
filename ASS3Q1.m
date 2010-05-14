H=zeros(61,61);
H(1,:)=10*ones(1,61);
H(61,:)=10*ones(1,61);
H(:,1)=10*ones(61,1);
H(:,61)=10*ones(61,1);
H(10,20)=5;
H(30,50)=3;
H(50,10)=2;
s = 0;
while s == 0
    T = H;
    for i = 2 : 60
        for j = 2 : 60
            if ((i ~= 10 || j ~= 20) && (i~= 30 || j ~= 50) && (i ~= 50 || j ~= 10))
                H(i,j) = (H(i+1,j) + H(i-1,j) + H(i,j+1) + H(i,j-1))/4;
            end
        end
    end
    if (max(abs(H-T)) < 10^(-6))
        s = 1;
    end 
end
[X,Y]=meshgrid(0:1/60:1);
[DX,DY]=gradient(transpose(-H));
contour(X,Y,transpose(H))
hold on
quiver(X,Y,DX,DY)
hold off