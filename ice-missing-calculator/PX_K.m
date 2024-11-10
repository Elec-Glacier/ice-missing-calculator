function [P] = PX_K(T, n)
    k = 0:n;
    P = binopdf(k, n, P_T(T));
end