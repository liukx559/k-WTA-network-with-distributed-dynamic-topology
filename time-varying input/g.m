function  f=g(x)

 global n
     f=zeros(n,1).*(x<=zeros(n,1))+ones(n,1).*(x>=ones(n,1))+x.*(x>zeros(n,1)).*(x<ones(n,1));
 
end