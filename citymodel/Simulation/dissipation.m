%dissipation W(N)

function W=dissipation(N,a,l)
%N=12000000;
global r;
global h;
global s;
global H;
alpha=2/(2+H);
delta=1/(4+2*H);
b=power(N,1/h);%branch
W=0;

Ni=zeros(1,h+1);%create a empty matrix of N
Li=zeros(1,h+1);%create a empty matrix of L
Ri=zeros(1,h+1);%create a empty matrix of Ri
si=zeros(1,h+1);%create a empty matrix of s

Ni(1,h+1)=N;
for i=h:-1:1
    Ni(1,i)=Ni(1,i+1)/b;
end
Li(1,1)=a/l;
for i=2:1:h+1
    Li(1,i)=Li(1,i-1)*power(b,alpha-1);
end
si(1,h+1)=s;
for i=h:-1:1
    si(1,i)=si(1,i+1)*power(b,1-delta);
end

for i=1:1:6
    Ri(1,i)=r*Li(1,i)/(Ni(1,i)*si(1,i));
    W=W+power(current(N),2)*Ri(1,i);
end
