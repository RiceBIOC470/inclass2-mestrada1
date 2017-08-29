%% Inclass assignment 2

% 1. a. fill in this loop with a conditional statement so that it displays
% only the odd numbers

for ii = 1:20
    if mod(ii,2)==1
    disp(ii)
    end
end

% b. Write a new loop to display the same odd numbers which doesn't use a conditional statement 

ii=1:20;
odd=ii(mod(ii,2)==1);
for n=1:10;
    z(n) = odd(n)
end

% c. display the same odd numbers without a loop or conditional (hint use
%  num2str)

ii=1:20;
odd=ii(mod(ii,2)==1);
num2str(odd)

%% 2. Vectorize the following code (that is produce the same result in z
%without using a loop). 

%a. 

for ii = 1:100
    z(ii) = ii*ii;
end

% % Vectorized code
ii=1:100;
y=ii.*ii

%b. 
z = 0;
for ii = 1:100
    z = z + ii;
end

% % Vectorized code
ii=1:100
sum(ii)

ans =

        5050

%c.
xx = rand(50,2);

for ii = 1:50
    z(ii) = sqrt(xx(ii,1)^2+xx(ii,2)^2);
end

% % Vectorized code 

z = sqrt(sum(xx.*xx, 2));

% d. what is the formula in c computing?

% The formula in c is computing the distance of points in the xx matrix
% from an origin. 

%% plotting

%a. make a plot of sin(x) and cos(x) vs x from x = 0 to 4*pi on the same axis where the graph
%of sin(x) vs x is a red-dashed line and the graph of cos(x) vs x is a
%blue solid line.

% % Plot code
x=0:4*pi;
plot(x,sin(x), 'r--', x, cos(x), 'b-')

% % see attached figure1_sin(x)_cos(x)

%b. repeat the above but where each graph is in a different subplot in the
% same figure. 

% % Plot code
x=0:4*pi;
subplot(1,2,1);
plot(x, sin(x), 'r--');
subplot(1,2,2);
plot(x, cos(x), 'b-');

% % see attached figure2_sin(x)_cos(x)

%c. here is some data, imagine they are x and y coordinates for cells. 
xy_dat = rand(100,2);

%plot the data in the xy plane.

% % Plot code
scatter(xy_dat(:,1), xy_dat(:,2))

% % see attached scatter_xy_dat

%now imagine there is some fluorescence data corresponding to the same
%cells
fluor = rand(100,1);
% plot the data in the xy plane but color code the data by the fluorescnece
% values. Hint: see the scatter command

% % Plot code
scatter(xy_dat(:,1), xy_dat(:,2), 24, fluor, 'filled')

% % see attached scatter_fluor