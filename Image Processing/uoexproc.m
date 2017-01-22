function [ newrgb ] = uoexproc(HSV,Vs,vmean)
%the function is to deal with the underexposure and overexposure image
Vs=midGrayMap(Vs,vmean);
HSV(:,:,3)=Vs;
newrgb=hsv2rgb(HSV);
end