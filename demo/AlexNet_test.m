% Test the trained CNN through sliding a large image using exhaustive search 
% A little image with cracks will be retained, otherwise removed.

clear;close all; clc;

% Add caffe/matlab to you Matlab search PATH to use matcaffe
if exist('../+caffe', 'dir')
  addpath('..');
else
  error('Please run this demo from caffe/matlab/demo');
end

project_dir = 'D:\caffe-master\projects_lsy\ACE\'; % path of project dir

[net] = caffe_classification_part1( 1, project_dir); %   use_gpu  1 to use the GPU, 0 to use the CPU
m = 0; n = 0;   % Initialize the numbers of little images with and without cracks
files = dir(strcat(project_dir, 'test\*.jpg')); %path of testing images
l = length(files);
for i=1:l
    filename=strcat(project_dir,'test\',files(i).name);
    im=imread(filename);
    [out_image, m, n] = slide( net, im, 256, 256, 256, 256, m, n, project_dir);
    imgSaveName=filename(1:length(filename)-4);
    imwrite(out_image,strcat(imgSaveName,'_out.jpg'));
end
   