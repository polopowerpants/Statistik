%% 4.1.2

fun = @(x) 2./x.^3

a = integral(fun, 1, 2)

b = integral(fun, 5, inf)

c = integral(fun, 4,8)

d = integral(fun, 1, 4) + integral(fun, 8, inf)

syms x
fun2 = int(2/x^3)

e = solve(-1/x^2 - -1/1^2 == 0.95, x) % 4.47
integral(fun, 1, 2*5^(1/2))

%%  4.2.4 
% vores nedre gærnse er ikke minus uendelig men 1. 
Fx = -1/x^2 - (-1/1^2)

%% 4.3.1 
clear
clc
fun = @(x) x .* 1.5 .* x.^2
mu = integral(fun, -1, 1) % mu 2.77e-17 -> det samme som nul

fun2 = @(x) (x-mu).^2 .* 1.5 .* x.^2
sigmaSquared = integral(fun2, -1, 1)

%% 4.4.1
% mean
mu = (-1+1)/2

sigmaSquared = (1-(-1))^2/12

sigma = sqrt(sigmaSquared)

b = 0.9

% c = 0.5x+0.5

%% 4.5.1
clear 
clc

a = normcdf(1.32)

b = normcdf(3)

c = 1 - normcdf(1.45)

d = 1 - normcdf(-2.15)

e = normcdf(1.76) - normcdf(-2.34)

%% 4.5.4
clear 
clc
a = 10



syms x
a = solve(normcdf(x, 10, 2) == 0.5, x)

b = solve(normcdf(x, 10, 2) == 0.05, x) 

c = solve(normcdf(10, 10, 2) - normcdf(x, 10, 2) == 0.2, x) 

d = solve(normcdf(x+10, 10, 2) - normcdf(-x+10, 10, 2) == 0.95, x) 

e = solve(normcdf(x+10, 10, 2) - normcdf(-x+10, 10, 2) == 0.99, x)


%% 4.5.13
clear 
clc

a = 1 - normcdf(13, 12, 0.5)

syms x
b = solve(normcdf(1/x) == 0.999)

c = solve(normcdf(13, x, 0.5) == 0.999)

%% 4.6.1
clear 
clc
n = 200;
p=0.4;

a = normcdf((70-n*p+1/2)/sqrt(n*p*(1-p)))

b = normcdf((90-n*p-1/2)/sqrt(n*p*(1-p))) - a

c = normcdf((80-n*p+1/2)/sqrt(n*p*(1-p))) - normcdf((80-n*p-1/2)/sqrt(n*p*(1-p)))


%% 4.7.13
clear 
clc
syms mu x
fx = 1/mu * (exp(-1/mu*x))
Fx = int(fx, x)

a = -exp(-inf/mu) - (-exp(-mu/mu))

b = -exp(-inf/mu) - (-exp(-2*mu/mu))

c = -exp(-inf/mu) - (-exp(-3*mu/mu))

% it doesn't








