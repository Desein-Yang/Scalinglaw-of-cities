%area 

function A=area(N,a,l,gmean)
%N=1280000;%population
global unit_cost;

%----total cost------
T=unit_cost*Length(N,a,l);
syms A
A=solve((output(N,a,l,gmean)*arean(N,a,l)/A)-T,'A');
A=vpa(A);



