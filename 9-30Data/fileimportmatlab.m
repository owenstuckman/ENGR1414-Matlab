

clear all
clc

%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: C:\Users\ostuc\Documents\GitHub\ENGR1414-Matlab\Robot Data-1.xlsx
%    Worksheet: Sheet1
%
% Auto-generated by MATLAB on 30-Sep-2024 10:05:08

%% Set up the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 3);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:C86";

% Specify column names and types
opts.VariableNames = ["LeftMotor", "RightMotor", "Speed_ft_s_"];
opts.VariableTypes = ["double", "double", "double"];

% Import the data
RobotData_1 = readtable("C:\Users\ostuc\Documents\GitHub\ENGR1414-Matlab\Robot Data-1.xlsx", opts, "UseExcel", false);

%% Convert to output type
LeftMotor = RobotData_1.LeftMotor;
RightMotor = RobotData_1.RightMotor;
Speed_ft_s_ = RobotData_1.Speed_ft_s_;

%% Clear temporary variables
clear RobotData_1 opts



AvgMotor = (LeftMotor+RightMotor)/2;

AvgMotor = abs(AvgMotor);

plot(AvgMotor, Speed_ft_s_, 'x')
title('Robot Speed vs. Motor Values')
xlabel('Motor Values (0-1)')
ylabel('Estimated Speed (ft/s)')


SpeedData = table(AvgMotor, Speed_ft_s_);
BestFit = fit(AvgMotor, Speedfts, 'poly1')

%%Add best fit line to the plot
hold on
plot(BestFit)
xlabel('Motor Speed')
ylabel('Robot Speed (fps)')