% This program makes a plot comparing trash and recycling generated in an
% indoor vs. outdor setting. 

% Written by Owen Stuckman on October 10, 2024. %

rawData = readtable('rawDataP4.csv');

% Filter to indoor and outdoor %


indoorData = rawData(contains(rawData.Location_Qualitative__Indoor_Outside_, "Inside"),:);

outdoorData = rawData(contains(rawData.Location_Qualitative__Indoor_Outside_, "Outside"),:);


% Indoor Calcs %

sumCansIndoor = sum(indoorData.RecyclingCan_Amount_) + sum(indoorData.TrashCan_Amount_);
itemsGenIndoor = sum(indoorData.ItemsRecycled) + sum(indoorData.ItemsTrashed);

perIndoor = itemsGenIndoor/sumCansIndoor;

% Outdoor Calcs %

sumCansOutdoor = sum(outdoorData.RecyclingCan_Amount_) + sum(outdoorData.TrashCan_Amount_);
itemsGenOutdoor = sum(outdoorData.ItemsRecycled) + sum(outdoorData.ItemsTrashed);

perOutdoor = itemsGenOutdoor/sumCansOutdoor;

% Prep to Plot %

plotData = [perIndoor, perOutdoor];
names = ["Indoor Items", "Outdoor Items"];


% Plot pie chart comparison %
piechart(plotData, names);
title("Comparison of items generated Indoor vs. Outdoor (on a per can basis, both recycling and trash).");
set(gca, 'FontSize', 12, 'FontName', 'Arial');
