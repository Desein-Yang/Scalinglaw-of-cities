%Length of infrastructure Ln(N)
function L1=Length(N,a,l)
%load data
global h;
global H;

%parameter
alpha=2/(2+H);
b=power(N,1/h);%branch
k=power(b,alpha-1);

%create matrix
Ni=zeros(1,h+1);%create a empty matrix of N
Li=zeros(1,h+1);%create a empty matrix of L
LN=zeros(1,h+1);%create a empty matrix of L

%---compute----
Ni(1,h+1)=N;
for i=h:-1:1
    Ni(1,i)=Ni(1,i+1)/b;
end
Li(1,1)=a/l;
for i=2:1:h+1
    Li(1,i)=Li(1,i-1)*k;
end
for i=1:1:h+1
    LN(1,i)=Li(1,i)*Ni(1,i);
end
L1=sum(LN);


%c=power(b,alpha);
%d=c/(c-1);
%e=1/(c-1);
%L2=Li(1,1)*(d*power(N,alpha)-e);

%---plot---






