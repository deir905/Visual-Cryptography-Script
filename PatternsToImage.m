function [arrayImage] = PatternsToImage(cellPatterns)
%PatternsToImage is a function that takes a cell array of 2x2 uint8 patterns and
%converts it to a 2D uint8 array so that it can be displayed and saved
%(greyscale image)

%Input: cellPatterns = A 2D m x n cell array containing 2x2 uint8 patterns to act as a
%key

%Output: arrayImage = A 2D m x n array of uint8 values (i.e. a greyscale
%image). The patterns from the cellPatterns input have been joined/assembled
%together to create a single image.

%Author: Daniel Eir

%Converts the contents of the 2D m x n cell array into a single 2D m x n
%array of uint8 values.
arrayImage = cell2mat(cellPatterns);

end

