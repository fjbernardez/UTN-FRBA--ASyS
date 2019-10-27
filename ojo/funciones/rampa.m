%-------------------------------------------------------------
%Funcion: ramp.m
%Acci�n: Genera la funci�n rampa: p(x)= x si x>0; 0 x<=0
%Entrada: x-> vector temporal (t) o discreto (n)
%Salida: r-> vector temporal r(t) o discreto r(n)
%-------------------------------------------------------------
function r=rampa(x)
r=x.*(x>0);