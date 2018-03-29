function plotZSqr_SquareGrid()
clf;
minXY = -0.8;
maxXY = 8.2;
n = 20;
delta = (maxXY-minXY)/n;

%% Create A Plot Of The Rectangular Grid
subplot (1, 2, 1)
title ("Grid of Squares")
hold on

%%% Draw the vertical lines
y = minXY:delta:maxXY;
for x =  minXY:maxXY
  plot( x*ones(1, n+1) , y,'b')
end

%% Draw the horizontal lines
x = minXY:delta:maxXY;
for y = minXY:maxXY
  plot(x, y*ones(1, n+1), 'r')
end
%%
%% Set the axes scaling, domain, and range
axis('equal')
xy = maxXY+1; 
axis([-xy xy -xy xy])

hold off 

%% Create A Plot Of The Image Of The Rectangular Grid
subplot (1, 2, 2)
title ("Image Of Grid Under w = z^2 + 1/z")
hold on
%% Draw the vertical lines
y = minXY:delta:maxXY;
l = length(y);
for x =  minXY:maxXY
  v = ones(1,l)*x.+y*i;
  v = v.*v+1./v;
  plot(real(v), imag(v),'b')
end

%% Draw the horizontal lines
x = minXY:delta:maxXY;
for y = minXY:delta:maxXY
  v = ones(1,l)*y*i.+x;
  v = v.*v + 1./v;
  v
  plot(real(v), imag(v), 'r')
end

%% Set the axes scaling, domain, and range
axis('equal')
rMax = maxXY^2+4; iMax = 2*maxXY^2;
axis([-rMax rMax -iMax iMax])

hold off 