function [keyPatterns] = GenerateKey(randomIntegers, sixPatterns)
%GenerateKey is a function that makes a 2D cell array to act as a key. Each
%cell array element is a 2x2 uint8 pattern (made in the CreatePatterns
%function) selected at random based on a 2D array of random values (range
%1 to 6 inclusive).

%Input: randomIntegers = A 2D m x n array containing random integers
%between 1 and 6 inclusive
%       sixPatterns = A 1x6 cell array of patterns (where each cell array element is a 
%2x2 uint8 array).

%Output: keyPatterns = A 2D m x n cell array containing patterns to act as a
%key. Each element of the cell array is a randomly selected 2x2 uint8 array
%(pattern) from the sixPatterns cell array.

%Author: Daniel Eir

[rows, cols] = size(randomIntegers);

%Cycles through each element in a 2D m x n cell array and stores a random
%2x2 unit8 array (pattern).
for i = 1:rows
    for j = 1:cols
        keyPatterns{i,j} = sixPatterns{randomIntegers(i,j)};
    end
end

end

