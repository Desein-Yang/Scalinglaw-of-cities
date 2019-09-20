%enconomic output 
function Y=output(N,a,l,gmean)

%load data
%N=15800000;%Popupation
% l=10;%length
% I=0;

%------density------
An=arean(N,a,l);
den=N/An;
Fij=a*l*den;
%-------p(k)--------
% gk=zeros(1,150);
% pk=1/150;
% g=0;
% for i=1:1:150
%     gk(1,i)=normrnd(gmean,sigma1); 
%     g=g+gk(1,i)*pk;
% end
% g=g/150;

Y=N*gmean*Fij;



    
   




