function [ SL ] = Select_L(L,SL)
global n
if SL==L(1:1*n,:)
SL=L(1*n+1:2*n,:);
elseif(SL==L(1*n+1:2*n,:))
    SL=L(2*n+1:3*n,:);
elseif(SL==L(2*n+1:3*n,:))
    SL=L(3*n+1:4*n,:);
else
    SL=L(1:1*n,:);
end

end

