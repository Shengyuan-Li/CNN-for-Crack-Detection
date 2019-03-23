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
    train_mean.binaryproto: Mean file of training set
    val_mean.binaryproto: Mean file of validation set
    mean_train.bat: Batch file for computing mean of training set
    mean_val.bat: Batch file for computing mean of validation set
    train_val.prototxt: CNN architecture of training and validation processes
    solver.prototxt: Solver file for setting training and validation parameters
    train.bat: Batch file for training and validating the CNN
    log.txt: Log file of training and validation processes
    trained_models: Folder for saving trained CNN model
    demo/*.m: MATLAB codes for testing the trained model
    
# Useage

    Testing
    
    1. Download trained CNN model (https://drive.google.com/open?id=1Q3QaJoVVAq9dhqazNKiPnx5iU1BfBvJr) and put into folder 
       Trained_models
    2. In the path of MATLAB interface caffe/matlab/demo, run demo/AlexNet_test.m. Then testing results will be saved
       in test folder

    
    Preraring datasets
    
    1. Prepare your own data or download crack dataset from 
       (https://drive.google.com/open?id=1XGoHqdG-WYhIaTsm-uctdV9J1CeLPhZR)             
       If you need to change the training images or validating images. Then put the data into train/ and val/ respectively
    2. Generating label files train.txt and val.txt, run train_label.m and val_label.m
    3. Converting training set and validation set to genarate train_leveldb and val_leveldb, run convert_train_leveldb.bat
       and convert_val_leveldb.bat
    4. Computing means of training set and validation set to genarate train_mean.binaryproto and val_mean.binaryproto, run 
       mean_train.bat and mean_val.bat
    
    
    Training and validation
    
    Run train.bat, then the log.txt will be created autometiclly. Finally, trained CNN model will be saved in the
    trained_models file
    
    
# Note
    1. In all batch files (*.bat), the path of compiled caffe must be changed correctly 
    2. The MATLAB files in demo folder must be run in the path of MATLAB interface caffe/matlab/demo
    3. In AlexNet_test.m, project_dir must be changed as the absolute path to the test folder
