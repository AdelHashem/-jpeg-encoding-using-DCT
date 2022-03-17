N = 8;
k = 0:1:7; r = 0:1:7;
uk = sqrt(2/N); u0=sqrt(1/N);
u=zeros(8,8);
u([2 : end],:) = uk; u(1,:) = u0;

c8= u .* cos((pi*k'/N).*(r+.5));