function [alteredUint8] = AlterByOne(originalUint8)
%AlterByOne is a function that adds 1 to an input uint8 value in the
%range of 0 to 255 inclusive. If the input uint8 value is 255, this function
%will subtract by 1.

%Input: originalUint8 = An 8-bit unsigned integer within the range 0 to 255
%inclusive.
%Output: alteredUint8 = An 8-bit unsigned integer that is one more or less
%than the input uint8 value.

%Author: Daniel Eir

%checks if the input UNIT8 value is equal to 255.
if originalUint8 == 255
    alteredUint8 = uint8(originalUint8 - 1);
else
    alteredUint8 = uint8(originalUint8 + 1);
end
end

