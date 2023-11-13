function [ A,L ] = Modify_weight( A,t )
%修改权重
[r,c]= size(A);
for i = 1 : c                         %将对角线元素置0
  for j = 1 : c
   if (A(i,j)>0) 
       p = rand();
       if (p<0.7)
        A(i,j) =round(A(i,j)+3*sin(t+0.2)+2);
        %A(i,j) =randi(10);
       end
      end;
  end;
end;
A = tril(A);
A = A + A';
G=graph(A);
figure%将邻接矩阵转换成图
plot(G,'EdgeLabel', G.Edges.Weight, 'linewidth', 2,'layout','circle');	%画图

D = diag(sum(A,2));
L=D-A;
e=eig(L)



end

