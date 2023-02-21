x=0:0.1:3;
y1=x.^5/10;
y2=x.*sin(x);
y3=cos(x);
plot( x, y1, x, y2, '--r', x, y3, ':g');
title('The american title')
legend('1','2','3')