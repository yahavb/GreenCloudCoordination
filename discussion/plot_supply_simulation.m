%[Time,SolarAvailibilityRegion1MW,SolarAvailibilityRegion2MW,SoalrAvailibilityRegion3MW,WindAvailibilityRegion1MW,WindAvailibilityRegion2MW,WindAvailibilityRegion3MW] = importbaseline('baseline.csv',2, 49);
simulation = importsimulation('baseline.csv',2, 49);
simulation.Time=datetime(simulation.Time,'InputFormat','MM/dd/yy HH:mm');
simulation=sortrows(simulation,'Time');
x=simulation.Time;
supply_s1=simulation.SolarAvailibilityRegion1MW;
supply_s2=simulation.SolarAvailibilityRegion2MW;
supply_s3=simulation.SoalrAvailibilityRegion3MW;
supply_w1=simulation.WindAvailibilityRegion1MW;
supply_w2=simulation.WindAvailibilityRegion2MW;
supply_w3=simulation.WindAvailibilityRegion3MW;
figure
subplot(2,1,1);
[hAx,hAy1,hAy2]=plotyy(x,supply_s1,[x,x],[supply_s2,supply_s3]);
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
legend('Region1 PV','Region2 PV','Region3 PV');
%legend('CA PV','AZ PV','NV PV');
subplot(2,1,2);
[hAxx,hAw1,hAw2]=plotyy(x,supply_w1,[x,x],[supply_w2,supply_w3]);
datetick('x','HH:MM');
xlabel('Date Time')
ylabel('Simulated Wind Power (MW)')
hAw2(1).LineWidth = 1.75;
hAw2(1).Marker = '+';
hAw2(2).LineWidth = 0.55;
hAw2(2).Marker = '*';
hAw1.LineWidth = 1.75;
hAw1.Marker = 'o';
legend('Region4 Wind','Region5 Wind','Region6 Wind');
