function [hiddenImage] = EmbedImage(binaryImage,colourImage)
%EmbedImage is a function that embeds a binary image inside another colour
%image. If a pixel in the binary image is black, this function will alter 
%the red intensity value by 1 to ensure the sum of the RGB values
%equal to an even number. If a pixel in the binary image is white, this 
%function ensures that the sum of RBG values equal to an odd number.

%Input: binaryImage = A 2D array of uint8 values (greyscale image). Each
%value will be either 255 or 0.
%       colourImage = A 3D array of uint8 values (RGB colour image) that
%the binary image will be embedded to.

%Output: hiddenImage = A 3D array of uint8 values equal to the input
%colourImage array but with altered red colour intensity values such that
%the respective pixel will be embedded with the binary image.

%Author: Daniel Eir

%Creates 3D array of uint8 values (RGB colour image) initially equal to the
%input colourImage array.
hiddenImage = colourImage;

[rows, cols] = size(binaryImage);

%Checks whether each pixel in the binary image is black or white (255 or 0).
for i = 1:rows
    for j = 1:cols
        %Finds the sum of the RGB colour values by using the sum function 
        %(which also converts it internally to double data type)for the third dimension.
        colourSum = sum(colourImage(i,j,:),3);
        if binaryImage(i,j) == 255 && mod(colourSum,2) ~= 1
            hiddenImage(i,j,1) = AlterByOne(hiddenImage(i,j,1)); %alters red intensity value
        elseif binaryImage(i,j) == 0 && mod(colourSum,2) ~= 0
            hiddenImage(i,j,1) = AlterByOne(hiddenImage(i,j,1));
        end
    end
end

            
            
            
            
            
end

