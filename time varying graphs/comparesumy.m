figure 
clear all
e=10;
N=100;
for i=1:4
e=e*10;
str=strcat('alpha0.001epsilon',num2str(e),'.mat');
load(str);
plot(t,X(:,1:N)*ones(N,1));
xlabel('t');
ylabel('sumy');
hold on
end