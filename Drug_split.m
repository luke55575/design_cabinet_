function N=Drug_split(data,A)
%N은 새롭게 세분화된 의약품 캐비닛 유형의 너비가 (n+1)*1 행렬임을 나타냅니다.
%M은 중복성을 나타냅니다.
%data는 들어오는 데이터이고, 첫 번째 열은 약물 저장 탱크의 범위이고, 세 번째 열은 해당 약물 유형입니다.
%A는 n*1 크기의 행렬인 원약물저장탱크의 여러 종류의 폭을 나타낸다.
%start는 약품 저장 탱크의 최소 범위를 나타냅니다.
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
B(B==2115)=0;
q=find(B==max(B));
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
%s1,s2-data
%sum1
sum1=sum(data(s1:s2,:));
sum1=sum1(1,3);
sum2=0;
for i=s1:s2
    sum2=sum2+data(i,3);
    if sum2/sum1>=0.5
        d=i;
        N(1,n+1)=data(d,1);
        break;
    end
end
N=sort(N,2);
    
    
