function trapeciocomp
f='10^3*9.8*122*(60-x)';
a=0;
b=10;
n=6;
% f funcion
% a,b intevalo
% n numero partes
disp('Funcion: ');
f
disp(strcat('De [a: ',num2str(a),'Hacia b : ',num2str(b),']'));
f=inline(f);
h=(b-a)/n;
aprox=f(a)+f(b);
for i=1:n-1
x=a+i*h;
aprox=aprox+2*f(x);
end
aprox=(h/2)*aprox;a=0;
disp(aprox)