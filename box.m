function S=box(data,H)
%Input:
%   data:
%   ��һ��:ҩƷ��Ӧ����߶�
%   �ڶ���:ҩƷ��Ӧ������
%   ������:ҩƷ��������
%   H:���Ÿ���߶�����
%Output:
%   S:
%   ��һ��:����߶�
%   �ڶ���:���ָ���߶���������
n=length(H);
S=zeros(n,2);
S(:,1)=H;
k=1;
M=zeros(n,1);
%M����ÿ�ָ߶�����ӦҩƷ�����ܿ��
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