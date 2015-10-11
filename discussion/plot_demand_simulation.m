demandsimulation = import_demand_simulation('demand_simulation.csv', 2, 49);
demandsimulation.Time=datetime(demandsimulation.Time,'InputFormat','MM/dd/yy HH:mm');
demandsimulation=sortrows(demandsimulation,'Time');
x=demandsimulation.Time;
demand_s1=demandsimulation.BaselineCpucoreshoursSimulator1;
demand_s2=demandsimulation.BaselineCpucoreshoursSimulator2;
demand_s3=demandsimulation.BaselineCpucoreshoursSimulator3;
demand_s4=demandsimulation.BaselineCpucoreshoursSimulator4;
demand_s5=demandsimulation.BaselineCpucoreshoursSimulator2;
demand_s6=demandsimulation.BaselineCpucoreshoursSimulator3;
%demand_s7=demandsimulation.BaselineCpucoreshoursSimulator4;
demand_s6=demand_s6*(1-0.3);
demand_s5=demand_s5*(1-0.45)+0.45*demand_s5;
demand_s1=demand_s1*(1-0.3)+0.3*demand_s3;
figure
subplot(2,1,1);
[hAx,hAy1,hAy2]=plotyy(x,demand_s2,[x,x],[demand_s3,demand_s4]);
%datetick('x','HH:MM','keeplimits','keepticks')
datetick('x','HH:MM')
xlabel('Date Time')
ylabel('Simulated Compute Demand (Core/h)')
hAy2(1).LineWidth = 1.75;
%hAy2(1).Marker = '+';

%hAy2(2).LineStyle = '-.';
hAy2(2).LineWidth = 0.55;
%hAy2(2).Marker = '*';

%hAy1.LineStyle = '-.';
hAy1.LineWidth = 1.75;
%hAy1.Marker = 'o';

legend('Region1','Region2','Region3');
subplot(2,1,2);
[hAx,hAy1,hAy2]=plotyy(x,demand_s1,[x,x],[demand_s5,demand_s6]);
%datetick('x','HH:MM','keeplimits','keepticks')
datetick('x','HH:MM')
xlabel('Date Time')
ylabel('Simulated Compute Demand (Core/h)')
hAy2(1).LineWidth = 1.75;
legend('Region4','Region5','Region6');
