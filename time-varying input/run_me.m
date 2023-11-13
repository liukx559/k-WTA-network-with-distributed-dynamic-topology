clear all
close all
clc

global L K   alpha epsilon n temp  A
alpha=0.001;
epsilon=10000;
K=2; % K-winner-take-all
n=5;

% %���ɲ���ͨ��ͼ
% [L,A]=Sub_graph(SA);
%  SL=zeros(n,n);
%�������һ������ͼ
%[A,G]=Create_Graph(n);
% A=importdata('100map.csv');                                         
% D=diag(sum(A,2));
% L=D-A;
% e=eig(L);


for i=1:4
    %�л�����ͼ
    SA=importdata(strcat('G',num2str(i),'.csv'));
    G = graph(SA);
    figure%���ڽӾ���ת����ͼ
    plot(G,'EdgeLabel', G.Edges.Weight, 'linewidth', 1,'layout','circle');	
    %savefig(strcat('G',num2str(i)));
    D = diag(sum(SA,2));
    SL=D-SA;
    A=[A:SA];
    L=[L;SL];
end

 N = size(L,2);
x0=rand(3*n,1);
temp=0;
 opts_1 = odeset('RelTol',1e-8,'AbsTol',1e-8,'MaxStep',1e-4);%Ϊ ODE �� PDE ������������޸� options �ṹ��
 [t,X]=ode15s('K_WTA_model',[0,0.4]',x0,opts_1);%������΢�ַ��̺� DAE - ��׷���




figure;
plot(t,X(:,1:N));
xlabel('t');
ylabel('x');

figure;
plot(t,X(:,1:N)*ones(N,1));
xlabel('t');
ylabel('sumx');
 
figure
plot(t,X(:,N+1:2*N));
xlabel('t');
ylabel('z');

% for i=1:n
%         figure
%         plot(t,X(:,i));
%         xlabel('t');
%         ylabel( strcat('x',int2str(i)));
% end


figure
plot(t,X(:,2*N+1:3*N));
xlabel('t');
ylabel('lam'); 
