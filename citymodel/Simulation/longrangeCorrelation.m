%area

m=100;
% Generate a 2-dimensional sequence U of uncorrelated random numbers with
% Gaussian Distribution
for j=1:m
    for k=1:m
        U(j,k)= randn;
    end
end
%不相关的L^2个随机序列u(r)
% Calculate the Fourier transforms coefficients Q
Q= fft2(U);
%求解U（r）傅里叶变换

alpha=0.2;
beta=(alpha-2)/2;
% Define the Spectral Density Fucntion
s=@(x)(((2*pi)/(gamma(beta+1)))*((x/2)^(beta)*besselk(beta,x)));

% 定义以相关函数定义的谱密度函数S
% Matrix with the arguments BQ for the Spectral Density function s
for k=1:m
    for j=1:m
       
        BQ(k,j)=sqrt((-pi+2*pi*(k-1)/(m-1))^2+(-pi+2*pi*(j-1)/(m-1))^2);
    end
end
%求解beta2
% Calculate NQ for scaling with spectral density
for k=1:m 
    for j=1:m
        NQ(k,j)=Q(k,j)*(s(BQ(k,j))^(1/2));
    end
end
%分别计算\yi (r)序列的傅里叶变换

% Calculate the inverse Fourier transform from NQ with the correlated
% sequence 
NR= ifft2(NQ);



%syms theta x y
% f1=int(f,x,0,x) f is function dx from 0 to x
%y=int(P,g,-Inf,theta);
%solve(y,theta)