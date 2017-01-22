function [top,btm,left,right]=bwBoundary(bw)
% find the boundary of binary image
[M, N]=size(bw);
top=M+1;
btm=0;
left=N+1;
right=0;
for i=1:M
    for j=1:N
        if bw(i,j)==1
            if i<top
                top=i;
            end
            if i>btm
                btm=i;
            end
            if j<left
                left=j;
            end
            if j>right
                right=j;
            end
        end
    end
end
end