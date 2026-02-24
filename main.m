% PBRI: Pixel-consistency Bilinear Residual Isomorphism for Single Image Detail Enhancement
%  Conference paper: TWC 2026
%  Journal paper: IEEE Transactions on Wireless Communications (under review)
%  First author: He Jiang
%  Using main.m to run the project
%  All images files are saved in folder data, using format "*png" 
  
clc;clear all;warning off;
Files = dir(strcat('.\data\','*.png')); 
LengthFiles = length(Files); 
factor = 4; 
for ii = 1:LengthFiles 
    image=double(imread(strcat('.\data\',Files(ii).name)));
    tic
    disp(strcat('Now is processing image named:',Files(ii).name));
    [m,n,d] = size(image);
    if d == 3
        outimg1=image(:,:,1);
        outimg2=image(:,:,2);
        outimg3=image(:,:,3);
        % get H1 
        H1_outimg1=PBRI(outimg1);             
        H1_outimg2=PBRI(outimg2);
        H1_outimg3=PBRI(outimg3);
        % get details
        Details=zeros(size(image,1),size(image,2),3);
        Details(:,:,1)=imresize(H1_outimg1,[size(image,1),size(image,2)],'bilinear');
        Details(:,:,2)=imresize(H1_outimg2,[size(image,1),size(image,2)],'bilinear');
        Details(:,:,3)=imresize(H1_outimg3,[size(image,1),size(image,2)],'bilinear');
        % add details to the original images
        outimg1=outimg1+Details(:,:,1)*factor;
        outimg2=outimg2+Details(:,:,2)*factor;
        outimg3=outimg3+Details(:,:,3)*factor;
        outimg(:,:,1)=outimg1;
        outimg(:,:,2)=outimg2;
        outimg(:,:,3)=outimg3;
    end
    if d == 1
        outimg_temp=image;
        H_outimg_temp=PCRH(outimg_temp);             
        % get details
        Details=zeros(size(image,1),size(image,2),1);
        Details=imresize(H_outimg_temp,[size(image,1),size(image,2)],'bilinear');
        % add details to the original images
        outimg1=outimg1+Details*factor;
        outimg=outimg1;
    end
    imwrite(uint8(outimg),strcat('.\results\',Files(ii).name(1:end-4),'_PBRI.png'));
    clear outimg;
    toc

end




