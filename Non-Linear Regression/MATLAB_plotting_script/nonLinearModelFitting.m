%% A DataSet

clear all, clc
% Reading fitted model data: 
fileID = fopen("Result_A.txt", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_plot_1 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);

%plotting fitted Model
figure(1)
hold on
title("Model fitted by y= ln(ax)");
plot(dat_plot_1(2,:) , dat_plot_1(1,:), 'b');

% Reading data set: 
fileID = fopen("A.csv", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_set_1 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
% Plotting data set points
plot(dat_set_1(1,:) , dat_set_1(2,:), 'ro','MarkerFaceColor','r');
box on
grid on
xlabel('X-Axis')
ylabel('Y-Axis')
hold off

h1 = figure(1);
saveas(h1,'Model_fitted_A.emf');

% Reading convergance data: 
fileID = fopen("an_covergance_A.txt", 'r');
formatSpec = '%f';
% sizeA = [2 inf];
dat_convrge_1 = fscanf(fileID, formatSpec);
fclose(fileID);
initial_guess = dat_convrge_1(1);
true_value = dat_convrge_1(end);
length_array = size(dat_convrge_1);
length_array = length_array(1);
for i = 1:length_array
    x(i) = i;
    y(i) = true_value - dat_convrge_1(i);
end
figure(2)
hold on
plot(x, y)
grid on
box on
title("Difference of true value and calculated value VS number of iterations")
xlabel("Number of iterations")
ylabel("Difference of true value and calculated values")
hold off

h2 = figure(2);
saveas(h2,'Convergance_A.emf');
%% B DataSet

clear all, clc
% Reading fitted model data: 
fileID = fopen("Result_B.txt", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_plot_2 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);

%plotting fitted Model
figure(3)
hold on
title("Model fitted by y= ln(ax)");
plot(dat_plot_2(2,:) , dat_plot_2(1,:), 'b');

% Reading data set: 
fileID = fopen("B.csv", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_set_2 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
% Plotting data set points
plot(dat_set_2(1,:) , dat_set_2(2,:), 'ro','MarkerFaceColor','r');
box on
grid on
xlabel('X-Axis')
ylabel('Y-Axis')
hold off

h3 = figure(3);
saveas(h3,'Model_fitted_B.emf');

% Reading convergance data: 
fileID = fopen("an_covergance_B.txt", 'r');
formatSpec = '%f';
% sizeA = [2 inf];
dat_convrge_2 = fscanf(fileID, formatSpec);
fclose(fileID);
initial_guess = dat_convrge_2(1);
true_value = dat_convrge_2(end);
length_array = size(dat_convrge_2);
length_array = length_array(1);
for i = 1:length_array
    x(i) = i;
    y(i) = true_value - dat_convrge_2(i);
end
figure(4)
hold on
plot(x, y)
grid on
box on
title("Difference of true value and calculated value VS number of iterations")
xlabel("Number of iterations")
ylabel("Difference of true value and calculated values")
hold off

h4 = figure(4);
saveas(h4,'Convergance_B.emf');
%% C DataSet

clear all, clc
% Reading fitted model data: 
fileID = fopen("Result_C.txt", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_plot_3 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);

%plotting fitted Model
figure(5)
hold on
title("Model fitted by y= ln(ax)");
plot(dat_plot_3(2,:) , dat_plot_3(1,:), 'b');

% Reading data set: 
fileID = fopen("C.csv", 'r');
formatSpec = '%f %f';
sizeA = [2 inf];
dat_set_3 = fscanf(fileID, formatSpec, sizeA);
fclose(fileID);
% Plotting data set points
plot(dat_set_3(1,:) , dat_set_3(2,:), 'ro','MarkerFaceColor','r');
box on
grid on
xlabel('X-Axis')
ylabel('Y-Axis')
hold off

h5 = figure(5);
saveas(h5,'Model_fitted_C.emf');

% Reading convergance data: 
fileID = fopen("an_covergance_C.txt", 'r');
formatSpec = '%f';
% sizeA = [2 inf];
dat_convrge_3 = fscanf(fileID, formatSpec);
fclose(fileID);
initial_guess = dat_convrge_3(1);
true_value = dat_convrge_3(end);
length_array = size(dat_convrge_3);
length_array = length_array(1);
for i = 1:length_array
    x(i) = i;
    y(i) = true_value - dat_convrge_3(i);
end
figure(6)
hold on
plot(x, y)
grid on
box on
title("Difference of true value and calculated value VS number of iterations")
xlabel("Number of iterations")
ylabel("Difference of true value and calculated values")
hold off

h6 = figure(6);
saveas(h6,'Convergance_C.emf');