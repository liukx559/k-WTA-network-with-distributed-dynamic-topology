function [ A,G ] = Create_Graph( n )
%生成一个无向的随机加权图
Node_num = n;    %输入节点的个数
%A=ones(n,n);
A = randi(10,Node_num,Node_num);				%生成一个Node_num阶方阵
for i = 1 : Node_num                           %将对角线元素置0
  for j = 1 : Node_num
   p = rand();
   if (p>0.7)
      A(i,j) = 0;
      end;
   if (i == j)
      A(i,j) = 0;
      end;
  end;
end;

A = tril(A);
A = A + A';
															%输出A
G = graph(A);
figure%将邻接矩阵转换成图
plot(G,'EdgeLabel', G.Edges.Weight, 'linewidth', 2,'layout','circle');	%画图

end

