function A=Drug_room_3(data)
%data的第一列，对应储药槽高度
%data的第二列，所需总宽度
%data的第三列，对应隔板宽度
B=cumsum(data(:,2));
M=0;
i=1;
B=cumsum(B)./2500;
for k=1:1919
   if k==1919
       A(i,1)=data(k,1);
       break
   end
   if  B(k+1)>=ceil(B(k))
       A(i,1)=data(k,1);
       i=i+1;
   end
end