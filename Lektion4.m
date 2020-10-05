
%% 5.1.2

1/8 + 1/4 + 1/2 + 1/8

a = 1/8 + 1/4

b = a

c = 1/8 + 1/4 + 1/2

d = 1/2 + 1/8

xVec = [-1 -0.5 0.5 1]
yVec = [-2 -1 1 2]
fxy = [1/8 1/4 1/2 1/8]

eX = sum(xVec .* fxy)

eY = sum(yVec .* fxy)
%eX = -1 *1/8 + (-0.5*1/4) + 0.5 * 1/2 + 1 * 1/8

%eY = -2 * 1/8 -1 * 1/4 + 1 *1/2 + 2*1/8

vX = sum((xVec - eX).^2 .* fxy)

vY = sum((yVec - eY).^2 .* fxy)

% marignal distrubution of X er bare det samme. 

%% 5.1.9
clear 
clc
syms x y

c = 4/81 % fra Maple

fun = @(x,y) x.*y.*c

% løst med maple i stedet til c=4/81
% solve(integral2(fun, 0, 3, 0, 3) == 1, c) 

a = integral2(fun, 0,2,0,3)

b = integral2(fun, 0,2.5,0,3)

c = integral2(fun, 0,3,1,2.5)

d = integral2(fun, 1.8,3,1,2.5)

% løst i maple til 2
%fx = @(x) integral(@(y) fun(x,y), 0, 3)
%eX = integral(fx, -inf, inf, 'ArrayValued', true)

f = 0

% fx er fundet med maple til f(x) = 2x/9

%% 5.4.1
clear 
clc

x = [1 1 2 4]
y = [3 4 5 6]
fxy = [1/8 1/4 1/2 1/8]

mux = sum(x.*fxy)
muy = sum(y.*fxy)

sigmaxy = sum((x-mux).*(y-muy) .* fxy)

sigmax = sum((x-mux).^2 .* fxy)

sigmay = sum((y-muy).^2 .* fxy)

rhoxy = sigmaxy/sqrt(sigmax*sigmay)

%% 5.4.7

clear 
clc

x = [-1 0 0 1]
y = [0 -1 1 0]
fxy = [1/8 1/4 1/2 1/8]

mux = sum(x.*fxy)
muy = sum(y.*fxy)

sigmaxy = sum((x-mux).*(y-muy) .* fxy)

sigmax = sum((x-mux).^2 .* fxy)

sigmay = sum((y-muy).^2 .* fxy)

rhoxy = sigmaxy/sqrt(sigmax*sigmay)

% correlation er 0 se sigmaxy
% covariansen er også nul, dette betyder ikke at de er uafhængige, 
% men uafhængige variabler vil ahave en covarians på 0.

%% 5.6.1
clear 
clc

a = 3*2 + 2*6

b = 3^2 * 5 + 2^2 * 8

% laver normal med værdierne middelværdi og varians for den lineære
% kombination for < 18
c = normcdf(18 ,18, 77)

% samme bare med < 28
% men det er forkert
d = normcdf(28, 18, 77)


%% 5.6.9
clear
clc

(2^2 * 0.1^2 + 2^2 * 0.2^2) + (2*2*0.02 + 2*2*0.02)


%% 5.7.3
clear 
clc
%a)
syms x
h = x^2;
hinv = sqrt(x);

fy = exp(-(sqrt(x))) * abs(1/(2*sqrt(x)))

%b)
fy2 = exp(-x^2) * abs(2*x)

%c
fy3 = exp(-exp(x)) * abs(exp(x))













