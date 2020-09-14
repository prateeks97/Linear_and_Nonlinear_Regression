%% Line Fitting

clear all
% Reading file data: 
fileID = fopen("model_dataSet.csv", 'r');
formatSpec = '%f %f %f %f';
sizeA = [4 inf];
dat3 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
%%%%%%%%%%%%%%%%%%%%
figure(3)
hold on
box on
grid on
plot(dat3(3,:), (dat3(4,:)./dat3(3,:)),  'ro', 'MarkerFaceColor','r', "MarkerSize",3);
xlim([0 300]);
ylim([0 250]);
xlabel("Number of Bites");
ylabel("Kilocalories/number of bites");
% Reading file data: 
fileID = fopen("Result_Line.txt", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat3_1 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
%%%%%%%%%%%%%%%%%%%%
title("Model fitted by y= mx + c");
plot(dat3_1(2,:) , dat3_1(1,:), 'b', 'LineWidth',0.8);
hold off
h2 = figure(3);
saveas(h2,'line_fitted.emf');
%% Upward Parabola Fitting

clear all
% Reading file data: 
fileID = fopen("model_dataSet.csv", 'r');
formatSpec = '%f %f %f %f';
sizeA = [4 inf];
dat3 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
%%%%%%%%%%%%%%%%%%%%
figure(4)
hold on
box on
grid on
plot(dat3(3,:), (dat3(4,:)./dat3(3,:)),  'ro', 'MarkerFaceColor','r', "MarkerSize",3);
xlim([0 300]);
ylim([0 250]);
xlabel("Number of Bites");
ylabel("Kilocalories/number of bites");
% Reading file data: 
fileID = fopen("Result_Upward_parabola.txt", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat3_1 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
%%%%%%%%%%%%%%%%%%%%
title("Model fitted by (x-h)^2 = 4p(y-k)");
plot(dat3_1(2,:) , dat3_1(1,:), 'b', 'LineWidth',0.8);
hold off
h3 = figure(4);
saveas(h3,'parabola_fitted.emf');
%% DataSet

clear all
% Reading file data: 
fileID = fopen("model_dataSet.csv", 'r');
formatSpec = '%f %f %f %f';
sizeA = [4 inf];
dat3 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
%%%%%%%%%%%%%%%%%%%%
figure(5)
hold on
box on
grid on
plot(dat3(3,:), (dat3(4,:)./dat3(3,:)),  'ro', 'MarkerFaceColor','r', "MarkerSize",3);
xlim([0 300]);
ylim([0 250]);
xlabel("Number of Bites");
ylabel("Kilocalories/number of bites");
title("Number of bites vs KCal/number of bites")
hold off
h4 = figure(5);
saveas(h4,'dataSet.emf');