# CNN-for-Crack-Detection
An application of CNN for crack detection using Caffe

# Requirements

Caffe-GPU in Windows system (with compiled MATLAB interface)
MATLAB R2014a

# Content

    FCN_DatasetReader.py: Classes for training dataset and test image reading
    FCN_layers.py: Functions of layers
    FCN_model.py: Model of FCN
    FCN_finetune.py: Main training and test of FCN
    data/train/*: Folder for training dataset, contains subfolder 'image', 'annotation' and 'index.txt'
    data/valid/*: Folder for validing dataset, contains subfolder 'image', 'annotation' and 'index.txt'
    logs: Folder for training logs
    checkpoints: Folder for model parameters
    test: Folder for test images

