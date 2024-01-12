
cam = webcam("USB2.0 HD UVC WebCam", "resolution", "1280x720")
image = snapshot(cam)
imshow(image)

r = image(:,:,1);
g = image(:,:,2);
b = image(:,:,3);

%red
sum_elements_matrix_red = sum(r,"all");
size_r = size(r);
total_r = size_r(1)*size_r(2);
mean_r = sum_elements_matrix_red/total_r

%green
sum_elements_matrix_green = sum(g,"all");
size_g = size(g);
total_g = size_g(1)*size_g(2);
mean_g = sum_elements_matrix_green/total_g

%blue
sum_elements_matrix_blue = sum(b,"all");
size_b = size(b);
total_b = size_b(1)*size_b(2);
mean_b = sum_elements_matrix_blue/total_b

if mean_r > mean_g && mean_r > mean_b
    disp("the prominent colour is red")
elseif mean_g > mean_r && mean_g > mean_b
    disp("the prominent colour is green")
else 
    disp("the prominent colour is blue")
end
%% 
clear ; 
close all; 
clc;
imaqreset;

