%current of resource
function J=current(N)
%load data
%N=15800000;%Popupation
global h;
global H;
global s;
global rho;
global v;

%parameter
delta=1/(4+2*H);
b=power(N,1/h);%branch
k1=power(b,1-delta);
k2=power(b,delta);

si=zeros(1,h+1);%create a empty matrix of s
RhoVi=zeros(1,h+1);%create a empty matrix of Rho*V

%---compute----
si(1,h+1)=s;
for i=h:-1:1
    si(1,i)=si(1,i+1)*k1;
end
RhoVi(1,h+1)=rho*v;
for i=h:-1:1
    RhoVi(1,i)=RhoVi(1,i+1)*k2;
end
J=si(1,h+1)*RhoVi(1,h+1)*N;


%---plot---