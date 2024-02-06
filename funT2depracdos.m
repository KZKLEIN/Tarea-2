function dx=funT2depracdos(t,x)
% PARAMETROS
m1=0.2;
L1=0.3;
m2=0.1;
L2=0.25;
g=9.81;
c=0;

% VECTORES/MATRICES
dx=zeros(4,1);
M=[(m1+m2)*L1 m2*L2*cos(x(2)-x(1)); L1*cos(x(2)-x(1)) L2];
C=[c -m2*L2*x(4)*sin(x(2)-x(1)); L1*x(3)*sin(x(2)-x(1)) 0];
G=[(m1+m2)*g*sin(x(1)); g*sin(x(2))];

% DINAMICA DEL SISTEMA
dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=M\(-C*[x(3); x(4)]-G);