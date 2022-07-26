function [cellPatterns] = ImageToPatterns(arrayImage)
%ImageToPatterns is a function that converts a 2D array of uint8 values (greyscale
%image) into a 2D cell array consisting of 2x2 uint8 values (patterns)

%Input: arrayImage = 2D array of uint8 values (greyscale image) containing
%an image of lots of black and white pixels

%Output cellPatterns = 2D cell array where each cells are a 2x2 array of uint8
%values (pattern).

%Author: Daniel Eir

[rows, cols] = size(arrayImage);

%Uses mat2cell function to convert the 2D array into a cell array where
%each cell is a 2x2 uint8 array. The size of linspace(2,2,rows/2) specifies
%the number of rows in the output cell array and the array element (2)
%specifies the number of rows of the subarray within each cell of the cell array.
%linspace(2,2,cols/2) is the same but for columns.
cellPatterns = mat2cell(arrayImage, linspace(2,2,rows/2), linspace(2,2,cols/2));

end

