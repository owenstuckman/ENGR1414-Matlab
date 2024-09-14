% Land Cover Calculator N3 P2 %
% Made by Owen Stuckman on September 13, 2024 %

clc
clear

% Get user input%
forest = input("Input the area od the forest land cover: \n");

lawn = input("\nInput the area of the lawn land cover: \n");

paved = input("\nInput the area of the paved land cover: \n");

% Calculate total area%
totalArea = ((forest*0.2)+(lawn*.3)+(paved*.95))/(lawn+forest+paved);

% Display
disp(newline);
disp(totalArea);