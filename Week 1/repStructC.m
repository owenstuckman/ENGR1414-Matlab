
clc 
clear 

% init vars %
response = 1;
position = 1;

% loop to create vector %
while response ~= 0
    riverLevels(position) = input("Input a River Level: \n");
    position = position + 1;
    response = input("Input a Response: \n");
end

clc
disp("These are the entered rier levels:")
disp(riverLevels);