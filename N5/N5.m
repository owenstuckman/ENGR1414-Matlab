% Waste Divergence Calculator %
% Adapted from info form: %
% https://cleanriver.com/resource/how-to-measure-your-waste-diversion-rate/ %

% Waste weight estimations:
% https://www.lincoln.ne.gov/files/sharedassets/public/v/1/ltu/utilities/solid-waste-management/recycling/commercial-fact-sheets/estimating-material-weight.pdf%
% 150 gal capacity big belly solar %
% 35 gal typical outdoor can

% formula is rate = recycle / recycle + trash

% Written by Owen Stuckman on October 1, 2024 %

clear 
clc

% constants %
galTrashLb = .68;
galRecLb = .55;

% rerun external loop 

while true 

    % Program Explanation and Initial Information
    disp("This program works to take the cans you are using and find the waste diversion rate, and suggest plans for future improvement.")
    % display of common capacities %
    disp(newline);
    disp("Samples: Big belly solar solar can : 150 gal. Typical outdoor can: 35 gal.")
    disp(newline);
    disp("Input the Capacity of the Cans you are using");
    disp(newline);
    
    
    % Get inputs req for calc %
    capacityTrashCan = input("\nTrash Can Capacity (gal):");
    capacityRecyclingCan = input("\nRecycling Can Capacity (gal):");
    numTrashCanFilled = input("\nAmount of Trash Cans filled (num): ");
    numRecyclingCanFilled = input("\nAmount of Recycling Cans filled (num): ");
    numMonthsPlan= input("\nHow many months of plans do you want (months): ");
    intervalMonths = input("\nWhat interval do you want the plans to last for (months): ");
    goalDiversionRate = input("\nInput what your goal diversion rate is. A typical goal is .7 or 70%. Please input as a decimal:");


    % Calc Rate %
    trashGen = capacityTrashCan*numTrashCanFilled * galTrashLb;
    recycleGen = capacityRecyclingCan*numRecyclingCanFilled * galRecLb;
    diversionRate = recycleGen/(trashGen+recycleGen);

    % Output Comparison to Goal %
    disp(newline);
    disp(newline);
    disp(newline);
    disp("Your diversion rate was: " + diversionRate);

    
    % Display common strategies to improve %
    disp(newline);
    disp("Some easy ways to improve are to cut down on the total amount of resources used in an environment, and to use more recyclable materials.")
    
    % loop for 3,6,9,12 month plans
    disp(newline);
    disp("Here are some basic plans to get to a waste management goal.")
    differenceDiversion = abs(diversionRate-goalDiversionRate);
    differenceDiversionPercent = differenceDiversion *100;

    disp("You are only " + differenceDiversionPercent + "% off from the 70% goal. You will be sure to hit your goal by sticking to one of the provided plans.")
    
    months = 0+intervalMonths;

        % trash plans
        disp(newline);
        disp("Plans for changing trash:");
    newTrashGenRequired = (recycleGen/goalDiversionRate)-recycleGen;
    while months <= numMonthsPlan
        monthlyChange = (trashGen - newTrashGenRequired) / months;
        disp("Need to decrease trash by " + monthlyChange + "(lbs). For " + months + " months. ")

        months = months + intervalMonths;
    end

    months = 0+intervalMonths;

        % recycling plans
        disp(newline);
        disp("Plans for changing recycling:");
    newRecycleGenRequired = (goalDiversionRate*trashGen)/(1-goalDiversionRate);
    while months <= numMonthsPlan
        monthlyChange = -1*((recycleGen - newRecycleGenRequired) / months);
        disp("Need to increase recycling by " + monthlyChange + "(lbs). For " + months + " months. ")

        months = months + intervalMonths;
    end

    months = 0+intervalMonths;

    
    % display - give primary suggestion
    disp(newline);
    disp("To reach goals, here is a good plan to implement:");
    if differenceDiversion < .1
        disp("Choose a shorter plan, and make some decisions to make small shifts.")
    else if differenceDiversion <.3
        disp("Make some long term goals and changes to improve conditions.")
    else disp("Do what you can to improve, a combination of a short term recycling plan and long term trash plan or vice verse might be best suited for you.")
    end
    end
    

    % concluding message
    disp("Best of luck hitting your waste diversion goals!")
   
    % rerun %
    disp(newline);
        reRun = input("Rerun? (Y/N):");
        if reRun == "N"
            break
        end
    
end