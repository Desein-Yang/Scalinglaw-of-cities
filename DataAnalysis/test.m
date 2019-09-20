%by hanlestudy@163.com
clear
clc
%x=[2,4,5,6,6.8,7.5,9,12,13.3,15];
%y=[-10,-6.9,-4.2,-2,0,2.1,3,5.2,6.4,4.5];
data=xlsread('AmericanCities Dataset',2);

%y=log(data(:,1)).';
%x=log(data(:,2)).';
x=log(GDP(:,1).');
y=log(Population(:,1).');

plot(x,y,'o');
hold on;
xlabel('population');
ylabel('GDP');
title('对数拟合曲线');
legend('y=1.0727 x-3.9698');

p = polyfit(x,y,1)
%0:0.01:9    起始为0，终点为9，步长0.01

x1 = 10:0.01:20;
y1 = polyval(p,x1);
x2 =10:0.01:20;
y2= x2;

plot(x1,y1,'r');
hold on 
plot(x2,y2,'b')


