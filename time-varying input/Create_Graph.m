function [ A,G ] = Create_Graph( n )
%����һ������������Ȩͼ
Node_num = n;    %����ڵ�ĸ���
%A=ones(n,n);
A = randi(10,Node_num,Node_num);				%����һ��Node_num�׷���
for i = 1 : Node_num                           %���Խ���Ԫ����0
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
															%���A
G = graph(A);
figure%���ڽӾ���ת����ͼ
plot(G,'EdgeLabel', G.Edges.Weight, 'linewidth', 2,'layout','circle');	%��ͼ

end

