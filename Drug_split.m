function N=Drug_split(data,A)
%N��ʾ�·ָ�ļ�����ҩ������Ŀ��Ϊ(n+1)*1����
%M��ʾ�¾���������
%data�Ǵ�������ݣ���һ�У��ڶ���Ϊ��ҩ�۷�Χ��������Ϊ��Ӧ��ҩƷ����
%A��ʾԭ�ȵĴ�ҩ�۵ļ��������ȣ�Ϊn*1��С�ľ���
%start��ʾ��С�Ĵ�ҩ�۷�Χֵ
n=length(A);
B=zeros(n,1);
N=zeros(n+1,0);
N(1:n)=A;
k=1;
for i=1:n
    while data(k,1)<=A(i,1)
        B(i,1)=B(i,1)+data(k,3);
        if k==1919
            break
        end
        k=k+1;
    end
end
%��ĳһӰ��������������ֵ���д��������㷨���Ż����ʲ�ʹ�������ѭ��
B(B==2115)=0;
q=find(B==max(B));%q��B�����ֵ��λ��
if q==1
    a1=12;
else
    a1=A(q-1,1)+1;
end
a2=A(q,1);
if a2==22
    N(1,n+1)=21;
    N=sort(N);
end
if (a1+1)==a2
    N(1,n+1)=a1;
    N=sort(N);
end
s1=(find(data(:,1)==a1));
s2=(find(data(:,1)==a2));
s1=s1(1,1);
s2=s2(length(s2),1);
%s1,s2Ϊdata�е�λ�ã������ĩβ��
%sum1 �ָ�����������ҩƷ������
sum1=sum(data(s1:s2,:));
sum1=sum1(1,3);
sum2=0;
%sum2Ϊ�ָ����仹δ��ʼ���ҩƷ������
for i=s1:s2
    sum2=sum2+data(i,3);
    if sum2/sum1>=0.5
        d=i;
        N(1,n+1)=data(d,1);
        break;
    end
end
N=sort(N,2);
    
    