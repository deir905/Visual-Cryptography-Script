function [complementGreyscale] = ImageComplement(originalGreyscale)
%ImageComplement is a function that takes an input 2D array of uint8 values
%(greyscale image) and returns the complementary values through the formula:
%Pixel Complement value = 255 – original pixel value
%(i.e. black is swapped with white and white is swapped with black)

%Input: originalGreyscale = A 2D array of uint8 values (greyscale image)
%containing black or white pixels

%Output: complementGreyscale = A 2D array of uint8 values that are
%complementary to the input image.

%Author: Daniel Eir

%cycles through every element in the input 2D uint8 array
[rows, cols] = size(originalGreyscale);
for i = 1:rows
    for j = 1:cols
        %Assigns complementary values to a new 2D array
        complementGreyscale(i,j) = uint8(255 - originalGreyscale(i,j));
    end
end
end

