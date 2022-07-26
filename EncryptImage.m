function [cipherPatterns] = EncryptImage(unencryptedImage,keyPatterns)
%EncryptImage is a function that encrypts a plain image (2D array of uint8
%values) using a key array of patterns (2D cell array of 2x2 patterns), to
%obtain an encrypted cipher array of patterns (cell array containing 2x2
%uint8 subarrays (patterns)).

%Input: unencryptedImage = 2D array of uint8 values (grey scale plain image)
%       keyPatterns = 2D cell array of 2x2 patterns to act as a key array
%of patterns

%Output: cipherPatterns = 2D cell array of 2x2 patterns which is our cipher
%array of patterns. Each cell is a 2x2 array of uint8 values (greyscale
%image)

%Author: Daniel Eir

[rows, cols] = size(unencryptedImage);

%Checks each pixel if they are dark (< 128) or white (>= 128)
for i = 1:rows
    for j = 1:cols
        if unencryptedImage(i,j) < 128 
            %Assigns complementary pattern on the corresponding position
            cipherPatterns{i,j} = ImageComplement(keyPatterns{i,j});
        elseif unencryptedImage(i,j) >= 128 
            cipherPatterns{i,j} = keyPatterns{i,j};
        end
    end
end

            
end

