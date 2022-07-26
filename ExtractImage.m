function [binaryImage] = ExtractImage(hiddenImage)
%ExtractImage is a function that extracts a binary image (black and white)
%that has been embedded within a colour image (RGB). 
%If RGB values sum to odd number then assign white pixel.
%If RGB values sum to even number then assign black pixel.


%Input: hiddenImage = A 3D array of uint8 values (RGB colour image) that
%contains a hidden black and white image

%Output: binaryImage = A 2D array of uint8 values (greyscale image) of the
%black and white image that was hidden within the input 3D uint8 array.
%(Each pixel has a value of either 0 or 255)

%Author: Daniel Eir

[rows, cols, colour] = size(hiddenImage);

%Finds the sum of the RGB values in each pixel of the colour image
%then assigns respective binary pixel to new 2D array.
for i = 1:rows
    for j = 1:cols
        colourSum = sum(hiddenImage(i,j,1:colour),3);
        if mod(colourSum,2) == 0 %checks if sum is an even number
            binaryImage(i,j) = uint8(0);
        elseif mod(colourSum,2) == 1 %checks if sum is an odd number
            binaryImage(i,j) = uint8(255);
        end
    end
end
end

