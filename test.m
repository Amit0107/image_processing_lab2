% x = 0:80 % range for graph
% y1 = max(75 - x, 0);
% y2 = max((4000-110*x)/30, 0);
% y3 = max((15000 - 120*x)/210, 0);
% ytop = min([y1; y2; y3]);
% area(x, ytop);

f = [-143 -60]
A = [120 210; 110 30; 1  1; -1  0; 0  -1]
b = [15000; 4000; 75; 0;  0]
linprog(f, A, b)
-f*ans