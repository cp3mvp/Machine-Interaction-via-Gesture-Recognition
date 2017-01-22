function [ output ] = segSkinColor(I)
%this function segment the skin out by its color property

%in YCbCr Cr/Cb is in [tan(0.550*pi),tan(0.833*pi)]
%in YIQ Y is in [15,100]

rgb=double(imresize(I,[512 512]));
%convert rgb to hsv to define whether over or under exposure occured
HSV=rgb2hsv(rgb);
V=HSV(:,:,3);
vmean=mean(mean(V));

%processing under exposure and over exposure condition
if vmean>204 || vmean<45
    rgb=uoexproc(HSV,V,vmean);
end

% convert rgb to ycrcb and yiq
ycbcr=rgb2ycbcr(rgb);
yiq=rgb2ntsc(rgb);
I=yiq(:,:,2);
Cb=ycbcr(:,:,2);
Cr=ycbcr(:,:,3);
output=zeros(512);

% detecting skin color
for i=1:512
    for j=1:512
        if (Cr(i,j)/Cb(i,j)>=tan(0.55*pi) && Cr(i,j)/Cb(i,j)<=tan(0.833*pi)) &&... 
          (I(i,j)>=15 && I(i,j)<=100)
              output(i,j)=1;       
        end
    end
end

% return the output
output=logical(output);

end

