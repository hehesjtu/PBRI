# PBRI
This is the source code of paper named "Pixel-consistency Bilinear Residual Isomorphism for Single Image Detail Enhancement". This paper is submitted to IEEE Transactions on Wirelesss Communications.
## 1.Project Overview
This project implements the Pixel-consistency Bilinear Residual Isomorphism (PBRI) algorithm, specifically designed for single image detail enhancement tasks. The related research findings will be presented at the 2026 TWC Conference and have been submitted to the IEEE Transactions on Wireless Communications journal (Under Review).
## 2. Quick Start
The main execution entry of the project is the main.m file in the root directory. Run this script directly in the MATLAB environment to launch the algorithm:
```MATLAB
% Execute directly in MATLAB Command Window/Editor
run main.m
  ``` 
## 3. Data Requirements
### 3.1 Storage Path
All image files to be processed must be stored in the data folder under the project root directory. The basic project directory structure is as follows:
  ``` 
PBRI_Detail_Enhancement/
├── main.m       % Main running script
├── data/        % Dedicated image data folder (mandatory)
│   ├── *.png    % PNG-format images to be processed
└── results/     % The processed PNG image
```
### 3.2 Format Restriction
Only PNG format (*.png) image files are supported. There are no special constraints on filenames (comply with the operating system's naming conventions).
## 4.Core Algorithm
PBRI (Pixel-consistency Bilinear Residual Isomorphism): A single image detail enhancement framework based on pixel-consistency constraint and bilinear residual isomorphism. It accurately extracts residual details of images while avoiding over-enhancement and artifacts through pixel-level consistency verification, achieving a balance between detail enhancement and the original fidelity of images.
## 5.Notes
1.Ensure the MATLAB environment has normal read/write permissions for the data folder without path access restrictions.

2.t is recommended to use images with conventional resolutions (e.g., 512×512, 1024×1024) for processing; ultra-high resolution images are suggested to be appropriately cropped before processing.

3.Before running, confirm that all algorithm-dependent scripts and function files are in the same directory as main.m or have been added to the MATLAB search path.

4.This project is developed based on MATLAB and does not support direct operation in other programming environments for the time being.

## 
Last Update: 2026.2.2
