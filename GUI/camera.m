webcamlist;

cam=webcam(1);
%{
cam = 

webcam with properties:

                     Name: 'Integrated Webcam'
               Resolution: '640x480'
     AvailableResolutions: {1x11 cell}
                 Exposure: -4
                     Gain: 253
               Saturation: 32
             WhiteBalance: 8240
             ExposureMode: 'auto'
                Sharpness: 48
               Brightness: 128
    BacklightCompensation: 1
                 Contrast: 32
%}

preview(cam);

%img = snapshot(cam);

pause(3);
img1 = snapshot(cam);
pause(0.5);
img2 = snapshot(cam);
pause(3);
clear cam;
imshow(img1);
figure;
imshow(img2);
