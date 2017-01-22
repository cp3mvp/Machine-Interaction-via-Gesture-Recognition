function I=ImageShowGIF(filename)
[I,map] = imread(filename,'gif');
H=size(I);
for i = 1:4*H(1,4)
    imshow(I(:,:,:,mod(i,H(1,4))+1),map);
    pause(0.05);
end
end
