
%% 11.2.1
clear
clc

x=6322.28;
xsquared = 162674.18;
y = 4757.9;
ysquared = 107679.27;
xy = 125471.1;
n = 250;
x_bar = 1/n*x;
y_bar = 1/n * y

S_xx = xsquared - x^2/n
S_xy = xy - (x*y)/n

beta1_bar = S_xy/S_xx
beta0_bar = y_bar-beta1_bar * x_bar

refline(beta1_bar, beta0_bar)

% b
bodyFat = beta1_bar * 30 + beta0_bar

% c
resError = 25 - (beta1_bar * 25 + beta0_bar)

%% 11.2.3
clear
clc











%% 11.2.6








%% 11.2.10







%% 11.7.3








%% 11.7.5


%% 11.9.1


%% 11.9.2









