% Manufacturing Tolerances %
% Written by Owen Stuckman on 9/16/2024 %

clc 
clear

% input vars %
measuredDimensions = input("Please input the measured dimensions of several parts in mm: \n");
checkNum = input("\nPlease input the number of the part that is to be checked (Starting with 1 in correspondance to the entry: \n");

% formating %
disp(newline);

% conditional to meet tolerance %
if measuredDimensions(checkNum) <= 10.05 && measuredDimensions(checkNum) >= 9.95
    disp("Meets tolerance!");
else disp("Does not meet tolerance.");
end

% formating %
disp(newline);