i=7100
j=900
wind = import_wind_day_text('wind_data.csv', i, i+900);
x = [0:0.01:j];
p = raylpdf(x,300);
x2 = [0:1:j];
y=wind.powerMW;
figure;
[hAx,hY1,hY2]=plotyy(x2,y,x,p*1.5,'plot');
xlabel('Time (5min) increments')
ylabel(hAx(2),'Rayleigh p(B=300)') 
ylabel(hAx(1),'Actual - Power (MW)')
%set(hAx,{'ycolor'},{'r';'b'})  % Left color red, right color blue...
hY2.LineStyle = '-.';
hY2.LineWidth = 1.75;
hY1.Marker = '+';
%[~,idx] = removeSpikes(y,1,1,1);
%plot(x(idx),y(idx),'og')
