function S=box(data,H)
%Input:
%   data:
%   第一列:药品对应隔板高度
%   第二列:药品对应隔板宽度
%   第三列:药品所需列数
%   H:最优隔板高度种类
%Output:
%   S:
%   第一列:隔板高度
%   第二列:此种隔板高度所需数量
n=length(H);
S=zeros(n,2);
S(:,1)=H;
k=1;
M=zeros(n,1);
%M代表每种高度所对应药品所需总宽度
for i=1:length(data)
    if data(i,1)<=H(k)
        M(k)=M(k)+data(i,2)*data(i,3);
    else
        k=k+1;
        continue;
    end
end
M=ceil(M./(1500));
S(:,2)=M;