function output=midGrayMap(input,vmean)
%mapping high and low luminant pixels' value to mid
[M,N]=size(input);
output=input;
%mapping
gs=zeros(1,256);


for k=1:256
      if vmean>204
        gs(k)=18.38*(k-1)^0.4;
      else
        gs(k)=0.000698*(k-1-128)^2.5+128;
      end
end
  
for i=1:M
    for j=1:N
     %perform mapping      
        output(i,j)=gs((input(i, j))+1);
     
    end
end
end
