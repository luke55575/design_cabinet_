function A=Drug_room_3(data)%data
% 의 첫 번째 열은 약물 저장 탱크의 높이에 해당합니다.
%데이터의 두 번째 열, 필요한 총 너비
%data의 세 번째 열은 파티션의 너비에 해당합니다.
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
