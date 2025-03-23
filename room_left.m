function N=room_left(data,A)
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
