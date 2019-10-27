%---------------------------------------------------------------
%Funcion: delta.m
%Acción: Genera la función impulso: d(x)= 1/dx si x=0, 0 si x<>0
%Entrada: x-> vector temporal (t) o discreto (d)
%Salida: d-> vector temporal d(t) o discreto d(n)
%---------------------------------------------------------------
function d=delta(x)
if(length(x)==1)
    dx=1;
else
dx=abs(x(2)-x(1));
end
d=(1/dx).*(x<dx).*(x>-dx);
