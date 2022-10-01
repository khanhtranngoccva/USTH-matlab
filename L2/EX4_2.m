clc;
clear all;
close all;

x=[1 1]';
N = 50;
for k=1:N,
    F=[ x(1)*x(1)+ x(1)*x(2) - 10 ; x(2) + 3*x(1)*x(2)*x(2)-57];
    A=[2*x(1)+x(2), x(1) 
     ; 3*x(2).^2 , 1 + 6*x(1).*x(2)];
    dx=A\F;
    x=x-    dx
    k=k+1;
end
x