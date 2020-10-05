%% 3.5.2
clc
n = 10;
p = 0.1;
P = 0;
syms xi

% a)
% dete er det samme som binopdf
for xi = 0:2
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end
Pa = P
P = 0;

% b)
for xi = 9:10
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end
Pb = P
P = 0;

% c)
for xi = 4
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end
Pc = P
P = 0;

% d)
for xi = 5:7
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end
Pd = P
P = 0;

%% 3.5.4
clear
clc

x = 0:10;
y = binopdf(x,10,0.5);

figure
bar(x,y,1)
xlabel('Observation')
ylabel('Probability')
% a) 5 b) 0 og 10 
% c) 
y = binopdf(x,10,0.01);

figure
bar(x,y,1)
xlabel('Observation')
ylabel('Probability')

%% 3.5.13
clear
clc
warning('off','all')

p = 0.1;
n = 125;
P = 0;

%a)
for xi = 5:125
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end

Pa = P
%b)
P = 0;
for xi = 6:125
    P = P + nchoosek(n,xi) * p^xi * (1-p)^(n-xi);
end

Pb = P

%% 3.6.1

p = 0.5

% a)
% dette er antal fejl indtil første succes. Det er det samme som antal
% forsøg minus 1
a = geopdf(0, p)
b = geopdf(3,p)
c = geopdf(7,p)
d = geocdf(1, p)
e = 1 - geocdf(1, p)

%% 3.8.2
clear
clc

lambda = 10; % per time

a = poisspdf(5, lambda)
b = poisscdf(3, lambda)
lambda = 20;
c = poisspdf(15, lambda)
lambda = 5;
d = poisspdf(5, lambda)






