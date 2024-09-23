clc
clear

while true
    num1 = randi([0, 9]);  % Generate random integer between 0 and 9
    num2 = randi([0, 9]);  % Generate random integer between 0 and 9
    
    disp([num2str(num1) ' + ' num2str(num2) ' = ']);  % Display the sum problem
    inputNum = input('Input: ');  % Get user input
    
    if inputNum ~= num1 + num2  % Check if the answer is correct
        disp('Incorrect! Game over.');
        break;
    else
        disp('Correct!');  % Continue if the answer is correct
    end
end
