function [F] = Fb(L,T,ntimes)
F = zeros(1, 1+L);
F(1,1)=1;
A = zeros(L,L);
for i = 0:L
    for j = 0:L
        A(i+1,j+1) = PB_Bnext(i,j,L,T);
    end
end
for i = 1:ntimes
    F = F*A;
end
end

