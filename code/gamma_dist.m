function modfun = gamma_dist(u,x)
xn = x/u(1);
A1 = xn.^(u(2)-1);
A2 = exp(-xn);
modfun = abs(A1.*A2*u(3));