

% init vars %
response = 1;
sum = 1;
count = 1;

% sum while condition is not met %
while response ~= 0
    riverLevel = input("Input the River Level: \n");
    sum = sum + riverLevel;
    count = count + 1;
    response = input("Input the Response: \n");
end

% calc average % 
average = sum/count;

% display %
disp(newline);
disp("Average River Level");
disp(average);
