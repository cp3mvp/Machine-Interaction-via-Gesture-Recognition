function [top,btm,left,right]=DetectMotion(img1,img2)
%input two binary image, detect the boundary motion, calculate the
%difference
dif=logical(img1-img2);
[M,N]=size(dif);
dif=bwareaopen(dif,800);
[top,btm,left,right]=bwBoundary(dif);

% set the threshold to define whether the boundary is valid
if btm-top<100 || right-left<100
    top=1;
    btm=M;
    left=1;
    right=N;
% if it is valid, finally define the boundary
else
if top<=10
    top=1;
else
    top=top-10;
end
if btm>=M-10;
    btm=M;
else
    btm=btm+10;
end
if left<=10
    left=1;
else
    left=left-10;
end
if right>=N-10;
    right=N;
else
    right=right+10;
end
end

% figure;
% imshow(dif);
end