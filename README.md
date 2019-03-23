# CNN-for-Crack-Detection
An application of CNN for crack detection using Caffe

# Requirements

    Caffe-GPU in Windows system (with compiled MATLAB interface)
    MATLAB R2014a

# Content

    train/0/*: Folder for training images with cracks
    train/1/*: Folder for training images without cracks
    val/0/*: Folder for validation images with cracks
    val/1/*: Folder for validation images without cracks
    test/*: Folder for testing images and testing results
    train_leveldb: Folder for converted training set
    val_leveldb: Folder for converted validation set
    train.txt: label file of training set
    val.txt: label file of validation set
    train_label.m: MATLAB code for generating train.txt
    val_label.m: MATLAB code for generating val.txt
    convert_train_leveldb.bat: Batch file for converting training set
    convert_val_leveldb.bat: Batch file for converting validation set
    mean_train.bat: Batch file for computing mean of training set
    mean_val.bat: Batch file for computing mean of validation set
    train_val.prototxt: CNN architecture of training and validation processes
    solver.prototxt: Solver file for setting training and validation parameters
    train.bat: Batch file for training and validating the CNN
    log.txt: Log file of training and validation processes
    trained_models: Folder for saving trained CNN model
    demo/*.m: MATLAB codes for testing the trained model
    
# Useage
   Preraring datasets
    1.
 
 
 

# Note
    The MATLAB files in demo folder must be run in the path of MATLAB interface caffe/matlab/demo


