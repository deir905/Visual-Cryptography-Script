function [sixPatterns] = CreatePatterns()
%CreatePatterns is a function that creates a 1x6 cell array containing six
%special 2x2 uint8 value arrays (greyscale image patterns) which will be
%used for key generation.

%Input: None
%Output: sixPatterns = A 1x6 cell array of patterns (2x2 uint8 value
%arrays). Contains the following 2x2 patterns: bottom 2 black, top 2 black, left 2 black, 
%right 2 black, leading diagonal black, off diagonal black

%Author: Daniel Eir

%Creates 1x6 cell array
sixPatterns = {1:6};

%Store Pattern 1 & 2 to cell array
pattern = uint8([255 255 ; 0 0]);
sixPatterns{1} = pattern;
sixPatterns{2} = ImageComplement(pattern);

%Store Pattern 3 & 4 to cell array
pattern = uint8([0 255 ; 0 255]);
sixPatterns{3} = pattern;
sixPatterns{4} = ImageComplement(pattern);

%Store Pattern 5 & 6 to cell array
pattern = uint8([0 255 ; 255 0]);
sixPatterns{5} = pattern;
sixPatterns{6} = ImageComplement(pattern);

end

