function [ A,L ] = Modify_weight( A,t )
%�޸�Ȩ��
[r,c]= size(A);
for i = 1 : c                         %���Խ���Ԫ����0
  for j = 1 : c
   if (A(i,j)>0)          
        A(i,j) =round(A(i,j)+20*sin(t+0.2*i)+2,2);
      end;
  end;
end;
A = tril(A);
A = A + A';
G=graph(A);
figure%���ڽӾ���ת����ͼ
plot(G,'EdgeLabel', G.Edges.Weight, 'linewidth', 2,'layout','circle');	%��ͼ

D = diag(sum(A,2));
L=D-A;



end

