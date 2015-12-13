% Function to get RGB values of a color specified by colorNumber. Colors
% are drawn from a chart of RGB values (ranging from 0 - 1) named
% 'ColorRGB.mat' located in a folder called 'ColorRGB' in the present
% working directory.
% If colorNumber exceeds the total number of colors in the chart, the cycle
% is repeated.
% 
% Murty VP P S Dinavahi 03-12-2015

function rgbVals = getColorRGB(colorNumber)
    load(fullfile(pwd,'ColorRGB','ColorRGB.mat'));
    
    totColors = size(ColorRGB,1);
    if colorNumber>totColors
        colorNumber = colorNumber - (floor(colorNumber/totColors)*totColors);
    end
    
    rgbVals = ColorRGB(colorNumber,:);
end