%Reading the image
imgl=imread( 'balloons. jpg ' ) ;
figure
imshow( imgl) ;

%Extracting the image layers

red=imgl(:,:,1);
blue=img1(:,:,2);
green=imgl(:,:,3);

%Choice of pixel

d = impixel(imgl);

% thresholding
out=red>160 & blue<101 & blue>0 & green<ll0 & green>0;
figure
imshow(out) ;

%image enhancement 
out2=imfill(out,'holes'); 
out3=bwmorph(out2,'dilate',3);
out3=imfitt(out3,'holes'); 
figure 
imshow(out3) ;

%highlighting the image
imgBoth=imovertay(imgl,out3,'black') ; 
figure 
imshow(imgBoth) ; 
%highlighted_img=imgBoth; 