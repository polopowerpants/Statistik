%% 8.1.3
clear 
clc
% a
sampleMean1 = 38.02 + (61.98-38.02)
sampleMean2 = 39.95 + (60.05-39.95)
% b
% den med den længere bredde. Da der ved større sandsynlighed er et
% breddere interval

%% 8.1.4
clear 
clc
E = 20;
sigma = 20
% crital value (z_aplha/2) er fundet i tabel. Man kan sikkert også med
% matlab for 95% er den 1.96 for 99% er den 2.576

z_alphaHalve = norminv(1-0.05/2)

n = (z_alphaHalve*sigma/E)^2 % giver 3.8416 så der rundes op til 4

n = (z_alphaHalve*sigma/E)^2 % giver 6.968 så der rundes op til 7

%% 8.1.12
clear 
clc

data = [2.69 5.76 2.67 1.62 4.12]';

sigma = 0.66;
dataMean = mean(data);
z_alphaHalve = norminv(1-0.05/2); % gælder for 95%
n = size(data,1);

% a
B = dataMean+z_alphaHalve*sigma/sqrt(n)
A = dataMean-z_alphaHalve*sigma/sqrt(n)

range1 = B - A
% b
E = 0.55/2;
n = (z_alphaHalve*sigma/E)^2 % giver 22.1276 så der rundes op til 23
n = 23;

%upperBound = dataMean+z_alpha*sigma/sqrt(n)
%lowerBound = dataMean-z_alpha*sigma/sqrt(n)
%range2 = upperBound - lowerBound giver 0.5395

%% 8.2.1
clear 
clc

n = 10;
SEmean = 0.507;
StDev = 1.605;
Sum = 251.848;

% a
mean = Sum / n

variance = StDev^2
% b Dette er forkert da variansen jeg regner med at for samplen og ikke
% den rigtige varians. Derfor er vi nødt til at finde  t_n-1, alpha/2
% da dette er metoden uden at kende variansen.
%z_alpha = 1.96; %gælder for 95%
%upperBound = mean+z_alpha*StDev/sqrt(n)
%lowerBound = mean-z_alpha*StDev/sqrt(n)

% b med t altså uden at kende varians
tnm1AlphaHalve = tinv(1 - 0.05/2 , n-1)
B = mean+tnm1AlphaHalve*StDev/sqrt(n)
A = mean-tnm1AlphaHalve*StDev/sqrt(n)

%% 8.2.9
clear
clc
data = readmatrix('ch08', 'range', 'F3:F14')

% a
normplot(data) % det ligner at den er normalt fordelt

% b
n = size(data, 1);
tnm1AlphaHalve = tinv(1 - 0.05/2 , n-1)
StDev = sqrt(var(data)) % brug std
dataMean = mean(data)
% upper and lower bound kan være misledende
B = dataMean+tnm1AlphaHalve*StDev/sqrt(n)
A = dataMean-tnm1AlphaHalve*StDev/sqrt(n)

tnm1Alpha = tinv(0.05 , n-1)
LowerBound = dataMean -tnm1Alpha*StDev/sqrt(n)

forskel = LowerBound - A

%% 8.2.12
clear
clc
data = readmatrix('ch08', 'range', 'I3:I14')

n = size(data, 1);

% a
tnm1AlphaHalve = tinv(1 - 0.05/2 , n-1)

dataMean = mean(data)
StDev = std(data)
B = dataMean+tnm1AlphaHalve*StDev/sqrt(n)
A = dataMean-tnm1AlphaHalve*StDev/sqrt(n)

% b

% we can say with 95% confidence that the clinic's mean number of scans is
% between 1.98 amd 2.18 therefore this is likely that this clinic scans
% more than average of 1.95

%% 8.3.3
clear
clc

data = readmatrix('ch08', 'range', 'K3:K10')

n = size(data, 1);

chiIAnden1 = chi2inv(0.05/2, n-1)
chiIAnden2 = chi2inv(1-0.05/2, n-1)
S = std(data) % standard diviation

A = (n-1)*S^2/chiIAnden1
B = (n-1)*S^2/chiIAnden2

% det er for variansen vi skal finde den for standard afvigelsen
A = sqrt(A)
B = sqrt(B)

% det ligner i følge plottet at den er normalfordelt. 
normplot(data)

%%  8.4.1
clear
clc

n = 768;
pHat = 412/n

z_alphaHalve = norminv(1-0.05/2);

A = pHat - z_alphaHalve * sqrt(pHat*(1-pHat)/n)
B = pHat + z_alphaHalve * sqrt(pHat*(1-pHat)/n)



z_alpha = norminv(1-0.05);

lowerBound = pHat - z_alpha * sqrt(pHat*(1-pHat)/n)



