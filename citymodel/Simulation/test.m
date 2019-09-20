% create step N
global h;
global l;
global H;
global a;
global s;
global rho;
global v;
H=1;
s=1;
l=1;
h=5;
a=15.8;

N=zeros(1,1000);
N(1,1)=10000000;
W=zeros(1,1000);%create a empty matrix of arean
for i=1:1:1000
    N(1,i)=N(1,1)+10000*(i-1);
    W=dissipation(N(1,i));
end

% Plot fit with data.
h1= scatter( N, W,'red');
xlabel N
ylabel W
box off

