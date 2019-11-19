% [an bn]=STF(señal, Periodo,tiempo,  Aproximacion)

function [an,bn]=stf(s,T,t, n)
  
if(nargin<4)
    n=length(s);
end
an=zeros(1,n);
bn=zeros(1,n);
dt=t(2)-t(1);
an(1)=2/T*sum(s)*dt;

for nn=1:n-1 %%nn empezaria en 0, pero el a0 y b0 ya los tengo arriba
        an(nn+1)=2/T*sum(s.*cos(2*pi/T*nn*t))*dt;
        bn(nn+1)=2/T*sum(s.*sin(2*pi/T*nn*t))*dt;
end