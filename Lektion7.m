%% 9.2.2
clear
clc
% kritiske værdier z_alpha
a = norminv(0.01)

b = norminv(0.05)

c = norminv(0.10)


%% 9.2.3
clear
clc

SEmean = 0.237;
N = 10;
mean1 = 19.889;
mhu0 = 20;

stDev = SEmean * sqrt(N)
Z0 = (mean1-mhu0)/SEmean
P = 1-normcdf(Z0)

% c
% it is one sided

A = mean1 - SEmean * norminv(1-0.05/2)
B = mean1 + SEmean * norminv(1-0.05/2)

% d
P = 2*(1-normcdf(abs(Z0))) 


%% 9.2.4
clear
clc
Z0 = 2.05;
P = 1-normcdf(Z0)

Z0 = -1.84;
P = 1-normcdf(Z0)

Z0 = 0.4;
P = 1-normcdf(Z0)




%% 9.2.6a
clear
clc
%Udregner teststatic for a=0.05:
N = 15;
mean1 = 2.78;
mhu0 = 3;
stDev = 0.9;

Z0 = (mean1-mhu0)/(stDev/sqrt(N))

%2-sidet test:
Zalphahalve =  norminv(1-(0.05/2))
-Zalphahalve


%Vi kan ikke forkaste H0 da test statistic ligger inden for Accept
%intervallet. (|Z0| < Z(a/2))

%"Der er ikke nok bevis til at bekræfte at middel værdien ikke er 3 ved 95%
%signifikans niveau"

%% 9.2.7

% se i bogen da der ikke er noter på dette 


clear
clc

stDev = 1.25;
N=10;
mean1 = 40.5;
mhu0 = 40;

%H0: mhu0 >= 40
%H1: mhu0 < 40 -> En sidet test ved alpha=0.05

%Test static:
Z0 = (mean1-mhu0)/(stDev/sqrt(N))

Zalpha = norminv(1-0.05)

%Da |Z0| < Za kan vi ikke forkaste hypotesen

%P-value for test:

P = 1 - normcdf(Z0)

%Beta error for true mhu = 42:
beta = normcdf(Zalpha - ((42-mhu0)*sqrt(N))/stDev)

%Sample size required to ensure B < 0.1, if true mean 44:

beta2 = 0.1;
Zbeta = norminv(1-beta2)

n = ((Zalpha + Zbeta)^2*stDev^2)/(44-mhu0)^2

%n rounded up to 1

%95% Confidence interval:

A = mean1 - stDev/sqrt(N) * norminv(1-0.05)

%Vi kan sige med 95% sikkerhed at middelværdien er over 39.84,
%altså kan vi konkludere det samme som hypotese testen.

%% 9.3.1
% H0: u <= 10
% H1: u > 10
% 1. sidet test, ukendt varians, derfor teststatistic = T0
clear
clc
%Critical value for teststatistic: talpha
alpha = 0.01; n=20;
talpha = tinv(1-alpha, n-1)

alpha = 0.05; n=12;
talpha = tinv(1-alpha, n-1)

alpha = 0.1; n=15;
talpha = tinv(1-alpha, n-1)


%% 9.3.7
clear
clc

data = readmatrix('ch09', 'range', 'D3:D29')

% a
N = 29-2;
mean1 = mean(data);
mhu0 = 300;
stDev = std(data);

%Ukendt varians
T0 = (mean1-mhu0)/(stDev/sqrt(N))

%2-sidet test:
talphahalve =  tinv(1-(0.05/2),N-1)
-talphahalve

% b
P = 2*(1-tcdf(abs(T0), N-1))

% c
% making a 2 sided CI. This would say something about the certainty of the
% T0 value to be in the CI

%% 9.4.1
clear 
clc
variance0 = 7;


Achi2_1minusAhalv = chi2inv(0.01/2, 20-1)
Achi2_Ahalv = chi2inv(1-0.01/2, 20-1)

Bchi2_1minusAhalv = chi2inv(0.05/2, 12-1)
Bchi2_Ahalv = chi2inv(1-0.05/2, 12-1)

Cchi2_1minusAhalv = chi2inv(0.1/2, 15-1)
Cchi2_Ahalv = chi2inv(1-0.1/2, 15-1)

%% 9.4.3
clear 
clc
n = 17;
% sample stDev
s = 0.09
stDev = 0.75;

% a
% kritiske værdi
chi2_a = chi2inv(1-0.05/2, n-1)
% test statistic
chi2_0 = (n-1)*s^2/stDev^2 % er mindre end den kritiske værdi.


% b 
% making a onesided upper bound interval and deciding if the test
% statistic is under this bound.



%% 9.5.2
clear 
clc

n = 1000;
p0 = 0.9;
X =  850;

Z0 = (X-n*p0)/sqrt(n*p0*(1-p0))

zAhalve = norminv(1-0.05/2)
-zAhalve

P = 2*(1-normcdf(abs(Z0)))





