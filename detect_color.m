% Detect the red colored cloth using color detection and segmentation algorithm.
function [highlighted_img]=detect_color(img)


%img=imread('img1.png');
%figure
%imshow(img);

hI=rgb2hsv(img);
%figure
%imshow(hI);
hImage1=hI(:,:,1);
sImage1=hI(:,:,2);
vImage1=hI(:,:,3);
%d=impixel(hI);
%  red       
hueTL1 = 0.029; hueTH1 = 0.98;
saturationTL1 = 0.39; saturationTH1 = 1;
valueTL1 = 0.01; valueTH1 = 1;

% find red color
hueMaskred1 = (hImage1 <= hueTL1)|(hImage1 >= hueTH1);
saturationMaskred1 = (sImage1 >= saturationTL1) & (sImage1 <= saturationTH1);
valueMaskred1 = (vImage1 >= valueTL1) & (vImage1 <= valueTH1);
redObjectsMask1 = hueMaskred1 & saturationMaskred1 & valueMaskred1;


%figure
%imshow(redObjectsMask1);
out2=imfill(redObjectsMask1,'holes');
out3=bwmorph(out2,'erode',2);
out3=bwmorph(out3,'dilate',3);
out3=imfill(out3,'holes');
%figure
%imshow(out3);
imgBoth=imoverlay(img,out3);
%figure
%imshow(imgBoth);
highlighted_img=imgBoth;