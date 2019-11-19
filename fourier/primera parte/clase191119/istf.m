
function [iSerieFourier01]=istf(an0,an,bn,w,t,N)
  
iSerieFourier01= an0/2 ;

for nn=1:N
  iSerieFourier01= iSerieFourier01 + an(nn)*cos(nn*w*t) + bn(nn)*sin(nn*w*t) ;
end