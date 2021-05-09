function N=Drug_split(data,A)
%N表示新分割的几个储药柜种类的宽度为(n+1)*1矩阵
%M表示新矩阵的冗余和
%data是传入的数据，第一列，第二列为储药槽范围，第三列为对应的药品种类
%A表示原先的储药槽的几个种类宽度，为n*1大小的矩阵
%start表示最小的储药槽范围值
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
%对某一影响后续计算的特殊值进行处理，鉴于算法的优化，故不使用冗余的循环
B(B==2115)=0;
q=find(B==max(B));%q是B中最大值的位置
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
%s1,s2为data中的位置（起初和末尾）
%sum1 分割区间中所有药品的数量
sum1=sum(data(s1:s2,:));
sum1=sum1(1,3);
sum2=0;
%sum2为分割区间还未开始相加药品的数量
for i=s1:s2
    sum2=sum2+data(i,3);
    if sum2/sum1>=0.5
        d=i;
        N(1,n+1)=data(d,1);
        break;
    end
end
N=sort(N,2);
    
    