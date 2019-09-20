%calculate the best parameterG*
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

Fi=zeros(4,10101);
N0=12800000;
gk=1;
i=1;
% h1=unit_cost*Length(N0,a,l)-a*l*gmean*N0/area(N0,a,l,gk);
% h2=arean(N0,a,l)-c*N*power(area(N0)*N0,0.5);
for G=10:0.1:20
    for a=1:0.1:10
        l=G/a;
        Fi(1,i)=output(N0,a,l,gk)-dissipation(N0,a,l);
        Fi(2,i)=a;
        Fi(3,i)=l;
        Fi(4,i)=G;
        i=i+1;
    end
end
[Fmax,pos]=max(Fi(1,:))
amax=Fi(2,pos)
lmax=Fi(3,pos)
Gmax=Fi(4,pos)




