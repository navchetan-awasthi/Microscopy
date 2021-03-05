%% Code for performing the guided filtering based image enhancement for the 
%% microscopy images obatined using the whole slide imager proposed in the work.
%% Author - Navchetan Awasthi
%% Date - 1-Septmeber-2020


% Loading the image
filename = strcat('E:\New_Stacks_Prateek\focalStacksCytoPaper2020-20200722T042913Z-001\focalStacksCytoPaper2020\malblood-E_-12\',name,'.jpg');
A = imread(filename);
B = A;

% converting the image
I=rgb2gray(double(B)/255);
p = I;
r = 4;
eps = 0.01;
q = zeros(size(I));
tic; % starting measuring the time taken
q = guidedfilter(I, p, r, eps);
toc; % stop the time measurement
I_enhanced = (I - q) * 5 + q;
Output_Variance_gf = var(double(uint8(I_enhanced(:)*255)));
    






    
