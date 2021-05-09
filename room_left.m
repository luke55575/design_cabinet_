function N=room_left(data,A)
%A：储药槽种类，行向量
%data：输入的数据，第一列为药品所需储药槽最小宽度，第二列为药品所需个数
N=0;
n=length(A);
k=1;
for i=1:n
    while data(k,1)<=A(i)
       N=N+(A(i)-data(k,1))*data(k,2);
       if k==length(data)
            break;
       end
       k=k+1;
    end
end