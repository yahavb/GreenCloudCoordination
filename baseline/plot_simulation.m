%[Time,SolarAvailibilityRegion1MW,SolarAvailibilityRegion2MW,SoalrAvailibilityRegion3MW,WindAvailibilityRegion1MW,WindAvailibilityRegion2MW,WindAvailibilityRegion3MW] = importbaseline('baseline.csv',2, 49);
baseline = importsimulation('baseline.csv',2, 49);
baseline.Time=datetime(baseline.Time,'InputFormat','MM/dd/yy HH:mm');
baseline=sortrows(baseline,'Time');
x=baseline.Time;
s1=baseline.SolarAvailibilityRegion1MW;
s2=baseline.SolarAvailibilityRegion2MW;
s3=baseline.SoalrAvailibilityRegion3MW;
w1=baseline.WindAvailibilityRegion1MW;
w2=baseline.WindAvailibilityRegion2MW;
w3=baseline.WindAvailibilityRegion3MW;
figure
subplot(2,1,1);
[hAx,hAy1,hAy2]=plotyy(x,s1,[x,x],[s2,s3]);
%datetick('x','HH:MM','keeplimits','keepticks')
datetick('x','HH:MM')
xlabel('Date Time')
ylabel('Simulated PV Power (MW)')
%hAy2(1).LineStyle = '-.';
hAy2(1).LineWidth = 1.75;
hAy2(1).Marker = '+';

%hAy2(2).LineStyle = '-.';
hAy2(2).LineWidth = 0.55;
hAy2(2).Marker = '*';

%hAy1.LineStyle = '-.';
hAy1.LineWidth = 1.75;
hAy1.Marker = 'o';

%legend('CA PV','AZ PV','NV PV');
subplot(2,1,2);
[hAxx,hAw1,hAw2]=plotyy(x,w1,[x,x],[w2,w3]);
datetick('x','HH:MM');
xlabel('Date Time')
ylabel('Simulated Wind Power (MW)')
hAw2(1).LineWidth = 1.75;
hAw2(1).Marker = '+';
hAw2(2).LineWidth = 0.55;
hAw2(2).Marker = '*';
hAw1.LineWidth = 1.75;
hAw1.Marker = 'o';
