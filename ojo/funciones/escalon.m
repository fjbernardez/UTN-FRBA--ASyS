%-------------------------------------------------------------
%Funcion: esc.m
%Acci�n: Genera la funci�n escal�n: u(x)= 1 x>=0; 0 x<0
%Entrada: x-> vector temporal (t) o discreto (n)
%Salida: u-> vector temporal u(t) o discreto u(n)
%-------------------------------------------------------------
function u=escalon(x)
u=(x>=0);