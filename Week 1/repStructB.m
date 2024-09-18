
clc
clear

% init vars %
sum = 0;
position = 1;

riverLevels = input("Input River Levels:\n");

% sum %
while position <= length(riverLevels)
    sum = sum + riverLevels(position);
    position = position + 1;
end 

% calc %
average = sum / length(riverLevels);

% output %
disp(newline);
disp("Average River Level:");
disp(average);