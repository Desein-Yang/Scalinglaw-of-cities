%area of infrastructure An(N) 
function suman=arean(N,a,l)
%load data

global h;
global H;
global s;


%parameter

alpha=2/(2+H);
delta=1/(4+2*H);
b=power(N,1/h);%branch
k1=power(b,alpha-1);
k2=power(b,1-delta);

Ni=zeros(1,h+1);%create a empty matrix of N
Li=zeros(1,h+1);%create a empty matrix of L
si=zeros(1,h+1);%create a empty matrix of s
An=zeros(1,h+1);%create a empty matrix of An
%---compute----
Ni(1,h+1)=N;
for i=h:-1:1
    Ni(1,i)=Ni(1,i+1)/b;
end
Li(1,1)=a/l;
for i=2:1:h+1
    Li(1,i)=Li(1,i-1)*k1;
end
si(1,h+1)=s;
for i=h:-1:1
    si(1,i)=si(1,i+1)*k2;
end
An=0;
for i=1:1:h+1
    An(1,i)=Li(1,i)*Ni(1,i)*si(1,i);
end
suman=sum(An);

%---plot---