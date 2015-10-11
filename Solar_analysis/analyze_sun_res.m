sun = importfile_sun3('sun.csv', 2, 289);
sun.LocalTime=datetime(sun.LocalTime,'InputFormat','MM/dd/yy HH:mm');
sun=sortrows(sun,'LocalTime');
x=sun.LocalTime;
y1=sun.PowerMW;
y2=sun.PowerMW1;
y3=sun.PowerMW2;

figure;
[hAx,hAy1,hAy2]=plotyy(x,y1,[x,x],[y2,y3]);
datetick('x','HH:MM','keeplimits','keepticks')
xlabel('Time (5min) increments')
ylabel('Actual - Power (MW)')
hAy2(1).LineStyle = '-.';
hAy2(1).LineWidth = 1.75;
hAy2(1).Marker = '+';

hAy2(2).LineStyle = '-.';
hAy2(2).LineWidth = 0.55;
hAy2(2).Marker = '*';

hAy1.LineStyle = '-.';
hAy1.LineWidth = 1.75;
hAy1.Marker = 'o';

legend('CA PV','AZ PV','NV PV');
