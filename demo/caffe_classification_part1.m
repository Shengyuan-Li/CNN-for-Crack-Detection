function [net] = caffe_classification_part1( use_gpu, project_dir)

% Set caffe mode
if exist('use_gpu', 'var') && use_gpu
  caffe.set_mode_gpu();
  gpu_id = 0;  % we will use the first gpu in this demo
  caffe.set_device(gpu_id);
else
  caffe.set_mode_cpu();
end

% Load deploy file and trained model
net_model = [project_dir 'deploy.prototxt']; 
net_weights = [project_dir 'trained_models\_iter_15000.caffemodel']; 
phase = 'test'; % run with phase test (so that dropout isn't applied) 
if ~exist(net_weights, 'file')
  error('Model file doesn not eist!');
end

% Initialize the network using trained model
net = caffe.Net(net_model, net_weights, phase); 