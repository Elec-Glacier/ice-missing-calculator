function [miss] = P_miss(L,T,N)
% L是水道长度
% T是周期
% n是水道数量
F = Fb(L,T,10000);
Pmiss = 0;
for i = 0:L
    PM = 0;
    for j = 12-i:L-i
        PM = PM + binopdf(j,L-i,P_T(T));
    end
    Pmiss = Pmiss + F(1,i+1)*(1-PM);
end
miss = (72000/T)*N*Pmiss;
end