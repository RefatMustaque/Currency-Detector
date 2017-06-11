clc;
clear;
TrainingRgb = [];
% TrainingRgb is an empty matrix. It will be filled up successively using a loop.
TrainingHsv = [];
% TrainingHsv is an empty matrix. It will be filled up successively using a loop.
TrainingRatio = [];
% TrainingRatio is an empty matrix. It will be filled up successively using a loop.

GroupRgb =[];
% GroupRgb is an empty matrix. It will be filled up successively using a loop.
GroupHsv =[];
% GroupHsv is an empty matrix. It will be filled up successively using a loop.
GroupRatio =[];
% GroupRatio is an empty matrix. It will be filled up successively using a loop.


%training for two taka image and extracting its feature for
%any number of images are given below using the while loop.
i=1;
iString = ('two1.jpg');
%Assigning this value to iString will let the while loop began
%setting the boolean value of exist() to true.
while(exist(iString, 'file'))
                 
    I = imresize(imread(iString),[100 100]);               
    %reading image frome graphic file using imread().
    %resizing the image using imresize() and putting it in I.
    
    r = reshape(I(:,:,1),1,[]);
    %I(:,:,1) means all the red values of I. 
    %reshaping the red value vector of I into row vector
    
    g = reshape(I(:,:,2),1,[]);
    %I(:,:,2) means all the green values of I. 
    %reshaping the green value vector of I into row vector
    
    b = reshape(I(:,:,3),1,[]);
    %I(:,:,3) means all the blue values of I. 
    %reshaping the blue value vector of I into row vector
    
    HSV = rgb2hsv(I);
    %converting rgb image to hsv
    
    h = reshape(HSV(:,:,1),1,[]);
    %HSV(:,:,1) means all the hue values of HSV. 
    %reshaping the hue value vector of HSV into row vector
    
    s = reshape(HSV(:,:,2),1,[]);
    %HSV(:,:,2) means all the saturation values of HSV. 
    %reshaping the saturation value vector of HSV into row vector
    
    v = reshape(HSV(:,:,3),1,[]);
    %HSV(:,:,3) means all the vibrant values of HSV. 
    %reshaping the vibrant value vector of HSV into row vector

    IR = imread(iString);
    %sharpen = imsharpen(IR);
    %gray = rgb2gray(sharpen);
    % Converting IR to binary image

    %J = imnoise(gray,'gaussian',0,0.025);
    %K = wiener2(J,[5 5]);

    %SE = [1 1 1; 1 1 1; 1 1 1];
    %structuring element

    %opening = imopen(K,SE);
    %applying opening to the binary image using structuring element
    %mask = zeros(size(opening));
    %mask(25:end-25,25:end-25) = 1;
    %bw = activecontour(opening,mask,300);




    %complementing opening
    %bw( ~any(bw,2), : ) = [];  %rows
    %deleting row of notBW if find any non zero rows
    %bw( :, ~any(bw,1) ) = [];  %columns


    [X, Y] = size(IR);
    %putting the size of notBW after deleting rows and columns
    ratio = Y/X;
    
    I1  = [r, g, b];
    %Concatenating red, green, blue row vector in single row of I
    I2  = [h, s, v];
    %Concatenating hue, saturation, vibrant, ratio row vector in single row of I
    I3  = ratio;
    %putting ration into I3.
    
    TrainingRgb = [TrainingRgb; I1];
    %In every iteration, a new row of I1 is being added at the bottom of TrainingRgb.
    TrainingHsv = [TrainingHsv; I2];
    %In every iteration, a new row of I2 is being added at the bottom of TrainingHsv.
    TrainingRatio = [TrainingRatio; I3];
    %In every iteration, a new row of I3 is being added at the bottom of TrainingRatio.
    
    i=i+1;
    %incrementing i for looping.
    iString = ['two',num2str(i),'.jpg'];
    %iString is a string by concatenating 'two', 'i' and 'jpg'.
    %Here, num2str(i) converts i into string from number type.
    a=1;
    GroupRgb =[GroupRgb, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRgb.
    % Assigning class for the training data
    GroupHsv =[GroupHsv, a];
    %In every iteration, a new row of a is being added at the bottom of GroupHsv.
    % Assigning class for the training data
    GroupRatio =[GroupRatio, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRatio.
    % Assigning class for the training data
end


%training for five taka image and extracting its feature for
%any number of images are given below using the while loop.
i=1;
iString = ('five1.jpg');
%Assigning this value to iString will let the while loop began
%setting the boolean value of exist() to true.
while(exist(iString, 'file'))
                 
    I = imresize(imread(iString),[100 100]);               
    %reading image frome graphic file using imread().
    %resizing the image using imresize() and putting it in I.
    
    r = reshape(I(:,:,1),1,[]);
    %I(:,:,1) means all the red values of I. 
    %reshaping the red value vector of I into row vector
    
    g = reshape(I(:,:,2),1,[]);
    %I(:,:,2) means all the green values of I. 
    %reshaping the green value vector of I into row vector
    
    b = reshape(I(:,:,3),1,[]);
    %I(:,:,3) means all the blue values of I. 
    %reshaping the blue value vector of I into row vector
    
    HSV = rgb2hsv(I);
    %converting rgb image to hsv
    
    h = reshape(HSV(:,:,1),1,[]);
    %HSV(:,:,1) means all the hue values of HSV. 
    %reshaping the hue value vector of HSV into row vector
    
    s = reshape(HSV(:,:,2),1,[]);
    %HSV(:,:,2) means all the saturation values of HSV. 
    %reshaping the saturation value vector of HSV into row vector
    
    v = reshape(HSV(:,:,3),1,[]);
    %HSV(:,:,3) means all the vibrant values of HSV. 
    %reshaping the vibrant value vector of HSV into row vector

    IR = imread(iString);
    %sharpen = imsharpen(IR);
    %gray = rgb2gray(sharpen);
    % Converting IR to binary image

    %J = imnoise(gray,'gaussian',0,0.025);
    %K = wiener2(J,[5 5]);

    %SE = [1 1 1; 1 1 1; 1 1 1];
    %structuring element

    %opening = imopen(K,SE);
    %applying opening to the binary image using structuring element
    %mask = zeros(size(opening));
    %mask(25:end-25,25:end-25) = 1;
    %bw = activecontour(opening,mask,300);




    %complementing opening
    %bw( ~any(bw,2), : ) = [];  %rows
    %deleting row of notBW if find any non zero rows
    %bw( :, ~any(bw,1) ) = [];  %columns

    [X, Y] = size(IR);
    %putting the size of notBW after deleting rows and columns
    
    ratio = Y/X;
    
    
    I1  = [r, g, b];
    %Concatenating red, green, blue row vector in single row of I
    I2  = [h, s, v];
    %Concatenating hue, saturation, vibrant, ratio row vector in single row of I
    I3  = ratio;
    %putting ration into I3.
    
    TrainingRgb = [TrainingRgb; I1];
    %In every iteration, a new row of I1 is being added at the bottom of TrainingRgb.
    TrainingHsv = [TrainingHsv; I2];
    %In every iteration, a new row of I2 is being added at the bottom of TrainingHsv.
    TrainingRatio = [TrainingRatio; I3];
    %In every iteration, a new row of I3 is being added at the bottom of TrainingRatio.
    
    i=i+1;
    %incrementing i for looping.
    iString = ['five',num2str(i),'.jpg'];
    %iString is a string by concatenating 'five', 'i' and 'jpg'.
    %Here, num2str(i) converts i into string from number type.
    a=2;
    GroupRgb =[GroupRgb, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRgb.
    % Assigning class for the training data
    GroupHsv =[GroupHsv, a];
    %In every iteration, a new row of a is being added at the bottom of GroupHsv.
    % Assigning class for the training data
    GroupRatio =[GroupRatio, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRatio.
    % Assigning class for the training data
end


%training for ten taka image and extracting its feature for
%any number of images are given below using the while loop.
i=1;
iString = ('ten1.jpg');
%Assigning this value to iString will let the while loop began
%setting the boolean value of exist() to true.
while(exist(iString, 'file'))
                 
    I = imresize(imread(iString),[100 100]);               
    %reading image frome graphic file using imread().
    %resizing the image using imresize() and putting it in I.
    
    r = reshape(I(:,:,1),1,[]);
    %I(:,:,1) means all the red values of I. 
    %reshaping the red value vector of I into row vector
    
    g = reshape(I(:,:,2),1,[]);
    %I(:,:,2) means all the green values of I. 
    %reshaping the green value vector of I into row vector
    
    b = reshape(I(:,:,3),1,[]);
    %I(:,:,3) means all the blue values of I. 
    %reshaping the blue value vector of I into row vector
    
    HSV = rgb2hsv(I);
    %converting rgb image to hsv
    
    h = reshape(HSV(:,:,1),1,[]);
    %HSV(:,:,1) means all the hue values of HSV. 
    %reshaping the hue value vector of HSV into row vector
    
    s = reshape(HSV(:,:,2),1,[]);
    %HSV(:,:,2) means all the saturation values of HSV. 
    %reshaping the saturation value vector of HSV into row vector
    
    v = reshape(HSV(:,:,3),1,[]);
    %HSV(:,:,3) means all the vibrant values of HSV. 
    %reshaping the vibrant value vector of HSV into row vector

    IR = imread(iString);
    %sharpen = imsharpen(IR);
    %gray = rgb2gray(sharpen);
    % Converting IR to binary image

    %J = imnoise(gray,'gaussian',0,0.025);
    %K = wiener2(J,[5 5]);

    %SE = [1 1 1; 1 1 1; 1 1 1];
    %structuring element

    %opening = imopen(K,SE);
    %applying opening to the binary image using structuring element
    %mask = zeros(size(opening));
    %mask(25:end-25,25:end-25) = 1;
    %bw = activecontour(opening,mask,300);




    %complementing opening
    %bw( ~any(bw,2), : ) = [];  %rows
    %deleting row of notBW if find any non zero rows
    %bw( :, ~any(bw,1) ) = [];  %columns

    [X, Y] = size(IR);
    %putting the size of notBW after deleting rows and columns
    
    ratio = Y/X;
    
    
    I1  = [r, g, b];
    %Concatenating red, green, blue row vector in single row of I
    I2  = [h, s, v];
    %Concatenating hue, saturation, vibrant, ratio row vector in single row of I
    I3  = ratio;
    %putting ration into I3.
    
    TrainingRgb = [TrainingRgb; I1];
    %In every iteration, a new row of I1 is being added at the bottom of TrainingRgb.
    TrainingHsv = [TrainingHsv; I2];
    %In every iteration, a new row of I2 is being added at the bottom of TrainingHsv.
    TrainingRatio = [TrainingRatio; I3];
    %In every iteration, a new row of I3 is being added at the bottom of TrainingRatio.
    
    i=i+1;
    %incrementing i for looping.
    iString = ['ten',num2str(i),'.jpg'];
    %iString is a string by concatenating 'five', 'i' and 'jpg'.
    %Here, num2str(i) converts i into string from number type.
    a=3;
    GroupRgb =[GroupRgb, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRgb.
    % Assigning class for the training data
    GroupHsv =[GroupHsv, a];
    %In every iteration, a new row of a is being added at the bottom of GroupHsv.
    % Assigning class for the training data
    GroupRatio =[GroupRatio, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRatio.
    % Assigning class for the training data
end


%training for twenty taka image and extracting its feature for
%any number of images are given below using the while loop.
i=1;
iString = ('twenty1.jpg');
%Assigning this value to iString will let the while loop began
%setting the boolean value of exist() to true.
while(exist(iString, 'file'))
                 
    I = imresize(imread(iString),[100 100]);               
    %reading image frome graphic file using imread().
    %resizing the image using imresize() and putting it in I.
    
    r = reshape(I(:,:,1),1,[]);
    %I(:,:,1) means all the red values of I. 
    %reshaping the red value vector of I into row vector
    
    g = reshape(I(:,:,2),1,[]);
    %I(:,:,2) means all the green values of I. 
    %reshaping the green value vector of I into row vector
    
    b = reshape(I(:,:,3),1,[]);
    %I(:,:,3) means all the blue values of I. 
    %reshaping the blue value vector of I into row vector
    
    HSV = rgb2hsv(I);
    %converting rgb image to hsv
    
    h = reshape(HSV(:,:,1),1,[]);
    %HSV(:,:,1) means all the hue values of HSV. 
    %reshaping the hue value vector of HSV into row vector
    
    s = reshape(HSV(:,:,2),1,[]);
    %HSV(:,:,2) means all the saturation values of HSV. 
    %reshaping the saturation value vector of HSV into row vector
    
    v = reshape(HSV(:,:,3),1,[]);
    %HSV(:,:,3) means all the vibrant values of HSV. 
    %reshaping the vibrant value vector of HSV into row vector

    IR = imread(iString);
    %sharpen = imsharpen(IR);
    %gray = rgb2gray(sharpen);
    % Converting IR to binary image

    %J = imnoise(gray,'gaussian',0,0.025);
    %K = wiener2(J,[5 5]);

    %SE = [1 1 1; 1 1 1; 1 1 1];
    %structuring element

    %opening = imopen(K,SE);
    %applying opening to the binary image using structuring element
    %mask = zeros(size(opening));
    %mask(25:end-25,25:end-25) = 1;
    %bw = activecontour(opening,mask,300);




    %complementing opening
    %bw( ~any(bw,2), : ) = [];  %rows
    %deleting row of notBW if find any non zero rows
    %bw( :, ~any(bw,1) ) = [];  %columns

    [X, Y] = size(IR);
    %putting the size of notBW after deleting rows and columns
    
    ratio = Y/X;
    
    
    I1  = [r, g, b];
    %Concatenating red, green, blue row vector in single row of I
    I2  = [h, s, v];
    %Concatenating hue, saturation, vibrant, ratio row vector in single row of I
    I3  = ratio;
    %putting ration into I3.
    
    TrainingRgb = [TrainingRgb; I1];
    %In every iteration, a new row of I1 is being added at the bottom of TrainingRgb.
    TrainingHsv = [TrainingHsv; I2];
    %In every iteration, a new row of I2 is being added at the bottom of TrainingHsv.
    TrainingRatio = [TrainingRatio; I3];
    %In every iteration, a new row of I3 is being added at the bottom of TrainingRatio.
    
    i=i+1;
    %incrementing i for looping.
    iString = ['twenty',num2str(i),'.jpg'];
    %iString is a string by concatenating 'five', 'i' and 'jpg'.
    %Here, num2str(i) converts i into string from number type.
    a=4;
    GroupRgb =[GroupRgb, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRgb.
    % Assigning class for the training data
    GroupHsv =[GroupHsv, a];
    %In every iteration, a new row of a is being added at the bottom of GroupHsv.
    % Assigning class for the training data
    GroupRatio =[GroupRatio, a];
    %In every iteration, a new row of a is being added at the bottom of GroupRatio.
    % Assigning class for the training data
end
    



%extracting features from sammple images for
%any number of images are given below using the while loop.
i=1;
iString = ('S1.jpg');
%Assigning this value to iString will let the while loop began
%setting the boolean value of exist() to true.
while(exist(iString, 'file'))
    I = imresize(imread(iString),[100 100]);               
    %reading image frome graphic file using imread().
    %resizing the image using imresize() and putting it in I.
    
    r = reshape(I(:,:,1),1,[]);
    %I(:,:,1) means all the red values of I. 
    %reshaping the red value vector of I into row vector
    
    g = reshape(I(:,:,2),1,[]);
    %I(:,:,2) means all the green values of I. 
    %reshaping the green value vector of I into row vector
    
    b = reshape(I(:,:,3),1,[]);
    %I(:,:,3) means all the blue values of I. 
    %reshaping the blue value vector of I into row vector
    
    HSV = rgb2hsv(I);
    %converting rgb image to hsv
    
    h = reshape(HSV(:,:,1),1,[]);
    %HSV(:,:,1) means all the hue values of HSV. 
    %reshaping the hue value vector of HSV into row vector
    
    s = reshape(HSV(:,:,2),1,[]);
    %HSV(:,:,2) means all the saturation values of HSV. 
    %reshaping the saturation value vector of HSV into row vector
    
    v = reshape(HSV(:,:,3),1,[]);
    %HSV(:,:,3) means all the vibrant values of HSV. 
    %reshaping the vibrant value vector of HSV into row vector
    
    IR = imread(iString);
   sharpen = imsharpen(IR);
gray = rgb2gray(sharpen);
% Converting IR to binary image

J = imnoise(gray,'gaussian',0,0.025);
K = wiener2(J,[5 5]);

SE = [1 1 1; 1 1 1; 1 1 1];
%structuring element

opening = imopen(K,SE);
%applying opening to the binary image using structuring element
mask = zeros(size(opening));
mask(25:end-25,25:end-25) = 1;
bw = activecontour(opening,mask,300);




%complementing opening
bw( ~any(bw,2), : ) = [];  %rows
%deleting row of notBW if find any non zero rows
bw( :, ~any(bw,1) ) = [];  %columns
    figure;
    subplot(1,2,1),imshow(IR);title('Original Image');
    subplot(1,2,2),imshow(bw);title('ROI after cropping the Image');
    
    [X, Y] = size(bw);
    %putting the size of notBW after deleting rows and columns
    ratio = Y/X;
        
    SampleRgb  = [r, g, b];
    %Concatenating red, green, blue row vector in single row of Sample
    SampleHsv  = [h, s, v];
    %Concatenating red, green, blue, hue, saturation, vibrant, ratio row vector in single row of Sample
    SampleRatio  = ratio;
    %putting ratio into sample ratio
    
    
    ClassRgb = knnclassify(SampleRgb, TrainingRgb, GroupRgb);
    % Now we call knnclassify() to obtain the class the Sample belongs to.
    ClassHsv = knnclassify(SampleHsv, TrainingHsv, GroupHsv);
    % Now we call knnclassify() to obtain the class the Sample belongs to.
    ClassRatio = knnclassify(SampleRatio, TrainingRatio, GroupRatio);
    % Now we call knnclassify() to obtain the class the Sample belongs to.
    
        
    
    fprintf('%s image is in Class %d in term of RGB\n', iString, ClassRgb );
    % displaying the result on Command Window.
    fprintf('%s image is in Class %d in term of HSV\n', iString, ClassHsv );
    % displaying the result on Command Window.
    fprintf('%s image is in Class %d in term of Aspect Ratio\ns', iString, ClassRatio );
    % displaying the result on Command Window.
    
    i=i+1;
    %incrementing i for looping
    iString = ['S',num2str(i),'.jpg'];
    %iString is a string by concatenating 'S', 'i' and 'jpg'.
    %Here, num2str(i) converts i into string from number type.
end