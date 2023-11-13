function dX=K_WTA_model(t,X)
global L K alpha epsilon n temp SL
u=input_data(t);
deerta_t=0.1;
if(t==0)
SL=L(1:1*n,:);
temp=t+deerta_t;
elseif(t>temp)
    if SL==L(3*n+1:4*n,:)
        SL=L(1:1*n,:);
    elseif SL==L(1:1*n,:)
        SL=L(1*n+1:2*n,:);
    elseif SL==L(1*n+1:2*n,:)
        SL=L(2*n+1:3*n,:);
    elseif SL==L(2*n+1:3*n,:)
        SL=L(3*n+1:4*n,:);
    end
temp=t+deerta_t;
end
x=X(1:n);
y=X(n+1:2*n);
lam=X(2*n+1:end);
vec_1=ones(n,1);
 
dx=epsilon*(-x+g(u/alpha-lam/alpha));
dy = epsilon*(SL*lam)/alpha;
dlam = epsilon*(x-K*vec_1/n-SL*y-SL*lam)/alpha;

dX=[dx;dy;dlam];
t
end