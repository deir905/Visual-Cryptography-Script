function [unencryptedImage] = DecryptImage(cipherImage,keyImage)
%DecryptImage is a function that decrypts a cipher image using the key
%image. If the two corresponding pixels in the cipher image and key image
%are both the same (black or white) then the pixel in corresponding position
%in our decrypted image must be white. If the two corresponding pixels are
%not the same, then the pixel in corresponding position in our decrypted 
%image must be black.

%Input: cipherImage = 2D array of uint8 values (greyscale image) containing
%the black and white cipher image where each pixel has a value of either 0
%or 255.
%       keyImage = 2D array of uint8 values (greyscale image) containing
%the black and white key image where each pixel has a value of either 0 or
%255.
%Output: unencryptedImage = 2D array of uint8 values (greyscale plain image)
%containing the decrypted image.

%Author: Daniel Eir

[rows, cols] = size(keyImage);

%Checks if the overlapping pixels of the cipher image and key image are
%both black or both white. Then assigns a black or white pixel on 
%corresponding position in our decrypted image.
for i = 1:rows
    for j = 1:cols
        if cipherImage(i,j) == keyImage(i,j)
            unencryptedImage(i,j) = uint8(255);
        else
            unencryptedImage(i,j) = uint8(0);
        end
    end
end

end

