% create step N
global h;
global H;
global s;
global rho;
global v;
global unit_cost;
global r;
h=5;%hierarchical
H=1;%Hausdorff dimension
s=1;%least width(s5)
rho=1;%density of current
v=1;%velocity of current
unit_cost=1;%cost per length
r=0.1;%the resistence of unit 
gsigma=1;%the sigma of gk 
gmean=1;%the average of gk
a=15.8;%average across area
l=1;%average move length
samples=100;%the number of samples
step=500000;%the length of step

N=zeros(1,samples);
N(1,1)=100;
y1=zeros(1,samples);%create a empty matrix of arean
y2=zeros(1,samples);%create a empty matrix of length
y3=zeros(1,samples);%create a empty matrix of current
y4=zeros(1,samples);%create a empty matrix of output
y5=zeros(1,samples);%create a empty matrix of area
y6=zeros(1,samples);%create a empty matrix of area

for i=1:1:samples
    N(1,i)=N(1,1)+step*(i-1);
     y2(1,i)=Length(N(1,i),a,l);
     y1(1,i)=arean(N(1,i),a,l);
     y3(1,i)=current(N(1,i));
     y4(1,i)=area(N(1,i),a,l,gmean);
     y5(1,i)=output(N(1,i),a,l,gmean);
    y6(1,i)=dissipation(N(1,i),a,l);
end


figure(1)
h1= scatter( N, y1,'.');
xlabel N
ylabel An
box off
grid on
figure(2)
h2= scatter( N, y2,'.');
xlabel N
ylabel L
box off
grid on
figure(3)
h1= scatter( N, y3,'.');
xlabel N
ylabel J
box off
grid on
figure(4)
h1= scatter( N, y4,'.');
xlabel N
ylabel Y
box off
grid on
figure(5)
h1= scatter( N, y5,'.');
xlabel N
ylabel A
box off
grid on
figure(6)
h1= scatter( N, y6,'.');
xlabel N
ylabel W
box off
grid on

