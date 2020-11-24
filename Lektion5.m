%% Lek 5 :(

%% 6.1.1
clear 
clc
%no

% 6.1.2
%no
%6.1.3
%no
%6.1.4
% yes in a case where our samples a small except for one that is very large
% example [1 1 1 1 1000000]
%mean
mean = (1+1+1+1+1000000)/5
% standard diviation
stdDiv = sqrt(sum(([1 1 1 1 1000000] - 200000).^2 ) / 5)

%6.1.5
% yes if all sample values are the same.

%% 6.1.9
clear 
clc

data = readmatrix('ch06', 'range', 'D3:E14')
exercise = data(:,1)
noExercise = data(:,2)

% fjerner NaN
noExercise = noExercise(~isnan(noExercise))

exerciseMean = mean(exercise)
exerciseStd = std(exercise)

noExerciseMean = mean(noExercise)
noExerciseStd = std(noExercise)

figure('name', 'exercise')
scatter(exercise, ones(size(exercise)))

figure('name', 'noExercise')
scatter(noExercise, ones(size(noExercise)))

%% 6.1.12
clc
clear

data = readmatrix('ch06', 'range', 'H3:I28')
unseeded = data(:,1)
seeded = data(:,2)
total = [unseeded;seeded]

unseededMean = mean(unseeded)
seededMean = mean(seeded)
totalMean = mean(total)

unseededStd = std(unseeded)
seededStd = std(seeded)
totalStd = std(total)

unseededRange = range(unseeded)
seededRange = range(seeded)
totalRange = range(total)


%% 6.3.3
clear 
clc

data = readmatrix('ch06', 'range', 'L3:L72')

figure
histogram(data, 8)
figure
histogram(data, 16)

%% 6.4.1

clear 
clc
data = readmatrix('ch06', 'range', 'H3:I28')
unseeded = data(:,1)
seeded = data(:,2)
total = [unseeded;seeded]

unseededMedian = median(unseeded)
unseededQuartiles =  quantile(unseeded, [0.25 0.5 0.75])

figure
subplot(1,2,1)
boxplot(unseeded)
subplot(1,2,2);
boxplot(seeded)

%% 6.7.2

clear 
clc
data = readmatrix('ch06', 'range', 'K3:K84')

normplot(data)

%% 7.2.4 

%sprunget over

%% 7.3.2

% nummer 1 og 2

%% 7.4.2

% se løsning 






    











