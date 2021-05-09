function A=Drug_range(L,D,H)
ma_1=2.*D;
ma_2=(L.^2+D.^2).^(1/2);
ma_3=(D.^2+H.^2).^(1/2);
li_4=(D+2);
n=length(L);
A=zeros(n,2);
for i=1:n
    A(i,1)=min([ma_1(i,1);ma_2(i,1);ma_3(i,1);li_4(i,1)]);
    A(i,2)=min([ma_1(i,1);ma_2(i,1);ma_3(i,1);]);
end
