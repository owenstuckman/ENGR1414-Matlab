% Resume experience tracker %
% Written by Owen Stuckman 9/19/2024 %

clc
clear

% input req info %
yrsReq = input("Please input years of experience required for the position you are looking to fill (in years) \n");
expVector = input("\nPlease input a vector of a single candidae's experience: \n");

% required setup var %
sum = 0;

% for each element in array(vector) sum if greater or equal to 2 %
for i = length(expVector)
    if expVector(i) >= 2
        sum = sum + expVector(i);
    end
end

% format %
disp(newline);

% if meets experience condition
if sum >= yrsReq
    disp("Candidate has enough experience!");
else 
    disp("Candidate does not have enough experience. ");
end
