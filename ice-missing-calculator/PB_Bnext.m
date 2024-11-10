function [P] = PB_Bnext(a,b,L,T)
if b > 0
        P = binopdf(b-a+12,L-a,P_T(T));
else
    P = 0;
        for i=0:(12-a)
            P = P+binopdf(i,L-a,P_T(T));
        end
end

