function output=findGesture(filename1,filename2)
%this function creates training image

I1=imread(filename1);
I2=imread(filename2);

%using the property of skin color to segment
bw1=segSkinColor(I1);
bw2=segSkinColor(I2);

%Detect Motion
[top,btm,left,right]=DetectMotion(bw1,bw2);

%removing all static parts
bw=bw2;
for i=1:512
    for j=1:512
        if i<top || i>btm || j<left || j>right
            bw(i,j)=0;
        end
    end
end
        
%Thresholding
bw=bwareaopen(bw,1100); 

%filling the hole
bw=~bwareaopen(~bw,500);

%find the boundary location of guesture and resize it into [40 40]
[top,btm,left,right]=bwBoundary(bw);
gesture=bw(top:btm,left:right);
output=imresize(gesture,[60 60]);

% figure;
% imshow(output);


end
