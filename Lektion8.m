%% 10.1.1
clear 
clc

mean1 = 4.7;
mean2 = 7.8;
n1 = 10;
n2 = 15;
stDev1 = 10;
stDev2 = 5;

z0 = ((mean1-mean2)-0)/sqrt(stDev1^2/n1+stDev2^2/n2)

P = 2*(1- normcdf(abs(z0)))


% b
% udregner to sidet konfidens interval. altså find de kritiske værdier.

%% 10.2.2
clear 
clc

n1 = 15;
n2 = 15;
mean1 = 4.7; 
mean2 = 7.8;
s2_1 = 4;
s2_2 = 6.25;

s2_p = ((n1-1)*s2_1+(n2-1)*s2_2)/((n1-1)+(n2-1)) %(s2_1+s2_2)/2
s_p = sqrt(s2_p)

T0 = ((mean1-mean2)-0)/(s_p*sqrt(1/n1+1/n2))

P = 2*(1-tcdf(abs(T0), n1+n2-2))

% vi forkaster 
% udregner konfidens intervaller med tinv. 

%% 10.2.6
clear 
clc

n1 = 10;
mean1 = 290;
s1 = 12;

n2 = 16;
mean2 = 321;
s2 = 22;

z0 = ((mean1-mean2)-0)/sqrt(s1^2/n1+s2^2/n2)

P = 1-normcdf(abs(z0))
% det forkastes 

% b
% ændrer forskellen fra 0 til 25.
z0_2 = ((mean1-mean2)+25)/sqrt(s1^2/n1+s2^2/n2)
P = 1-normcdf(abs(z0_2))
% den kan vi ikke forkaste.

% c
A = (mean1-mean2)-sqrt(s1^2/n1+s2^2/n2)*norminv(1-0.05/2)
B = (mean1-mean2)+sqrt(s1^2/n1+s2^2/n2)*norminv(1-0.05/2)
% forskellen ligger i intervallet -17.9 til -44.1 med 95% sikkerhed.

%% 10.2.11
clear 
clc

brand1 = readmatrix('ch10', 'range', 'F3:F12')
brand2 = readmatrix('ch10', 'range', 'G3:G12')

normplot(brand1)
hold on
normplot(brand2)
% de virker normalfordelt

% b
mean1 = mean(brand1)
mean2 = mean(brand2)
n1 = size(brand1, 1);
n2 = size(brand2, 1);

S1 = std(brand1)
S2 = std(brand2)

Sp = sqrt( ((n1-1)*S1^2 + (n2-1) * S2^2) / (n1+n2-2) )

T0 = ((mean1-mean2) - (0)) / (Sp*sqrt(1/n1+1/n2))

t_kritisk = tinv(1-0.05/2,n1+n2-2)
% da |T0| > t_kritisk skal den forkastes
% med p
ttest2(brand1,brand2)
p = 2*(1 - tcdf(abs(T0), n1+n2-2))
% p er under 0.05 så den skal forkastes

% c
A = (mean1 - mean2) - t_kritisk*Sp*sqrt(1/n1+1/n2)
B = (mean1 - mean2) + t_kritisk*Sp*sqrt(1/n1+1/n2)


%% 10.4.1 
clear
clc
% parrede test

brand1 = readmatrix('ch10', 'range', 'S3:S10')
brand2 = readmatrix('ch10', 'range', 'T3:T10')
mean1 = mean(brand1)
mean2 = mean(brand2)
n1 = size(brand1, 1);
n2 = size(brand2, 1);
n = n1;


D_bar = mean1-mean2
sd = std(brand1-brand2)

t_kritisk = tinv(1-0.01/2, n-1)
A = D_bar - t_kritisk *sd / sqrt(n)
B = D_bar + t_kritisk * sd / sqrt(n)
% da intervallet indeholder 0, så er der ikke nogen signifikant forskel på
% de to brands.

%% 10.4.3
clc
clear
% parrede test

brand1 = readmatrix('ch10', 'range', 'Y3:Y9')
brand2 = readmatrix('ch10', 'range', 'Z3:Z9')

normplot(brand1)
hold on
normplot(brand2)
% de virker normalfordelt

mean1 = mean(brand1)
mean2 = mean(brand2)
n1 = size(brand1, 1);
n2 = size(brand2, 1);
n = n1;

D_bar = mean1-mean2
sd = std(brand1-brand2)

t0 = D_bar / (sd / sqrt(n))
t_kritisk = tinv(1-0.05/2, n-1)
if (abs(t0) > t_kritisk) == 1
    disp('nulhypotesen forkastes')
else 
    disp('nulhypotese kan ikke forkastes')  
end

A = D_bar - t_kritisk *sd / sqrt(n)
B = D_bar + t_kritisk * sd / sqrt(n)







