n=10;
x=-10.05:0.01:10;
y=1./(1.+25.*(x.^2));
%subplot(2,2,1)
%plot(x,y,'m-');

x1=-10.1:0.1:10;
y1=1./(1.+25.*(x1.^2));%rough
x2=-13:0.01:13;
y2=interp1(x1,y1,x2,'linear');
%subplot(2,2,2)
%plot(x2,y2,'*');
x3=-5.9:0.01:5.9;
y3=lglrcz(x1,y1,x3);
%subplot(2,2,3)
%plot(x3,y3,'+');
%subplot(2,2,4)
plot(x1,y1,'k',x2,y2,'*',x3,y3,'+');

