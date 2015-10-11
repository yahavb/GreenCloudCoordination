a=4.8;b=0.256;c=1.256;d=2.34;
supply_s1n=supply_s1.*a;supply_s2n=supply_s2.*a;supply_s3n=supply_s3.*a;
supply_w1n=supply_w1.*c;supply_w2n=supply_w2.*d;supply_w3n=supply_w3.*c;
demand_s1n=demand_s1.*b;demand_s2n=demand_s2.*b;demand_s3n=demand_s3.*b;
demand_s4n=demand_s4.*b;demand_s5n=demand_s5.*b;demand_s6n=demand_s6.*b;
diff_r1=supply_s1n-demand_s1n;
diff_r2=supply_s2n-demand_s2n;
diff_r3=supply_s3n-demand_s3n;
diff_r4=supply_w1n-demand_s4n;
diff_r5=supply_w2n-demand_s5n;
diff_r6=supply_w3n-demand_s6n;
figure
subplot(2,1,1);
[hDx,hDy11,hDy22]=plotyy(x,diff_r1,[x,x],[diff_r2,diff_r3]);
datetick('x','HH:MM');
hDy11.LineWidth = 1.75;
hDy11.Marker = '+';
hDy22(1).LineWidth = 0.55;
hDy22(1).Marker = 'o';
xlabel('Date Time');
ylabel('Benefit from PV');
legend('Region1 PV','Region2 PV','Region3 PV');
subplot(2,1,2);
datetick('x','HH:MM');
[hDx,hDy1,hDy2]=plotyy(x,diff_r4,[x,x],[diff_r5,diff_r6]);
datetick('x','HH:MM');
hDy1.LineWidth = 1.75;
hDy1.Marker = '+';
hDy2(1).LineWidth = 0.55;
hDy2(1).Marker = 'o';
xlabel('Date Time');
ylabel('Benefit from Wind');
legend('Region4 Wind','Region5 Wind','Region6 Wind');


