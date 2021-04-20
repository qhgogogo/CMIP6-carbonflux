load('nep_lat.mat')
addpath('shadedErrorBar');

colors=[0,0.3370,0.7410 ; 0.75,0.75,0;0.85,0.325,0.098;0.929,0.6964,0.125;0.29,0.694,0.125;...
       0.494,0.184,0.556; 0.466,0.674,0.188;0.75,0.6,0.75;0,0.5,0;...
       0.3610,0.745,0.933; 0 ,0.75,0.75;0.635,0.078,0.184];
target_nx = 160;
target_ny = 320;
target_xres = 180/target_nx;
target_yres = 360/target_ny;
lat = 90-target_xres/2:-target_xres:-90+target_xres/2;
lon = -180+target_yres/2:target_yres:180-target_yres/2;

interval = -60:10:80;
nep126_2015_20int = zeros(10,length(interval)-1);
nep126_2050_20int = zeros(10,length(interval)-1);
nep126_2100_20int = zeros(10,length(interval)-1);
nep245_2015_20int = zeros(10,length(interval)-1);
nep245_2050_20int = zeros(10,length(interval)-1);
nep245_2100_20int = zeros(10,length(interval)-1);
nep370_2015_20int = zeros(10,length(interval)-1);
nep370_2050_20int = zeros(10,length(interval)-1);
nep370_2100_20int = zeros(10,length(interval)-1);
nep585_2015_20int = zeros(10,length(interval)-1);
nep585_2050_20int = zeros(10,length(interval)-1);
nep585_2100_20int = zeros(10,length(interval)-1);
for i = 1:length(interval)-1
   xint = find(lat>interval(i)&lat<interval(i+1));
   nep_1980_20int(:,i)=nanmean(nep_lat_1980(:,xint),2); 
   
   nep126_2015_20int(:,i)=nanmean(nep126_lat_2015(:,xint),2);  %  need area weighted, do it later
   nep245_2015_20int(:,i)=nanmean(nep245_lat_2015(:,xint),2);
   nep370_2015_20int(:,i)=nanmean(nep370_lat_2015(:,xint),2);
   nep585_2015_20int(:,i)=nanmean(nep585_lat_2015(:,xint),2);
   
   nep126_2050_20int(:,i)=nanmean(nep126_lat_2050(:,xint),2);  %  need area weighted, do it later
   nep245_2050_20int(:,i)=nanmean(nep245_lat_2050(:,xint),2);
   nep370_2050_20int(:,i)=nanmean(nep370_lat_2050(:,xint),2);
   nep585_2050_20int(:,i)=nanmean(nep585_lat_2050(:,xint),2);
   
   nep126_2100_20int(:,i)=nanmean(nep126_lat_2100(:,xint),2);  %  need area weighted, do it later
   nep245_2100_20int(:,i)=nanmean(nep245_lat_2100(:,xint),2);
   nep370_2100_20int(:,i)=nanmean(nep370_lat_2100(:,xint),2);
   nep585_2100_20int(:,i)=nanmean(nep585_lat_2100(:,xint),2);
end


X0=interval(1:end-1)+10; X1=X0-2; 
X2=interval(1:end-1)+10; 
%X3=interval(1:end-1)+10; X3=X3+1.5;
X4=interval(1:end-1)+10; X4=X4+2;


x=lat;
figure;
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[94/360,60/360,108/360],'markerfacecolor',[94/360,60/360,108/360]});
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.494, 0.1840, 0.5560],'markerfacecolor',[0.494, 0.1840, 0.5560]});
y= mean(nep_lat_1980);
errbar = [std(nep_lat_1980);std(nep_lat_1980)];
hold on; 
shadedErrorBar(x, y, errbar, 'lineprops', {'color',[0.5, 0.5, 0.5],'markerfacecolor',[0.5, 0.5, 0.5]});
legend('historical CMIP6 results')
hold on; boxplot(nep126_2015_20int,'position',X1,'labels',X0,'PlotStyle','compact','color',[0, 0.4470, 0.7410]);
%hold on;boxplot(nep126_2100_20int,'position',X4,'PlotStyle','compact','color',[0.9290, 0.6940, 0.1250]);
hold on;boxplot(nep126_2100_20int,'position',X4,'PlotStyle','compact','color',[0.8500, 0.3250, 0.0980]);
hold on; boxplot(nep126_2050_20int,'position',X2,'labels',X0,'PlotStyle','compact','color',[0.55 0.71 0]);
xlim([-60,90]);
ylim([-50,250]);
hLegend = legend(findall(gca,'Tag','Box'), {'Group A','Group B','Group C'});
title('SSP126');
set(gcf,'Position',[100,100,800,500]);
xlabel('Latitude');
ylabel('NEP (gC/m^2/year)');

x=lat;
figure;
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[94/360,60/360,108/360],'markerfacecolor',[94/360,60/360,108/360]});
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.494, 0.1840, 0.5560],'markerfacecolor',[0.494, 0.1840, 0.5560]});
y= mean(nep_lat_1980);
errbar = [std(nep_lat_1980);std(nep_lat_1980)];
hold on; 
shadedErrorBar(x, y, errbar, 'lineprops', {'color',[0.5, 0.5, 0.5],'markerfacecolor',[0.5, 0.5, 0.5]});
hold on; boxplot(nep245_2015_20int,'position',X1,'labels',X0,'PlotStyle','compact','color',[0, 0.4470, 0.7410]);
%hold on;boxplot(nep126_2100_20int,'position',X4,'PlotStyle','compact','color',[0.9290, 0.6940, 0.1250]);
hold on;boxplot(nep245_2100_20int,'position',X4,'PlotStyle','compact','color',[0.8500, 0.3250, 0.0980]);
hold on; boxplot(nep245_2050_20int,'position',X2,'labels',X0,'PlotStyle','compact','color',[0.55 0.71 0]);
xlim([-60,90]);
ylim([-50,250]);
legend('historical CMIP6 rsults');
title('SSP245');
set(gcf,'Position',[100,100,800,500]);


x=lat;
figure;
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[94/360,60/360,108/360],'markerfacecolor',[94/360,60/360,108/360]});
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.494, 0.1840, 0.5560],'markerfacecolor',[0.494, 0.1840, 0.5560]});
y= mean(nep_lat_1980);
errbar = [std(nep_lat_1980);std(nep_lat_1980)];
hold on; 
shadedErrorBar(x, y, errbar, 'lineprops', {'color',[0.5, 0.5, 0.5],'markerfacecolor',[0.5, 0.5, 0.5]});
hold on; boxplot(nep370_2015_20int,'position',X1,'labels',X0,'PlotStyle','compact','color',[0, 0.4470, 0.7410]);
%hold on;boxplot(nep126_2100_20int,'position',X4,'PlotStyle','compact','color',[0.9290, 0.6940, 0.1250]);
hold on;boxplot(nep370_2100_20int,'position',X4,'PlotStyle','compact','color',[0.8500, 0.3250, 0.0980]);
hold on; boxplot(nep370_2050_20int,'position',X2,'labels',X0,'PlotStyle','compact','color',[0.55 0.71 0]);
xlim([-60,90]);
ylim([-50,250]);
legend('historical CMIP6 results');
title('SSP370');
set(gcf,'Position',[100,100,800,500]);


x=lat;
figure;
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[94/360,60/360,108/360],'markerfacecolor',[94/360,60/360,108/360]});
%shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.494, 0.1840, 0.5560],'markerfacecolor',[0.494, 0.1840, 0.5560]});
y= mean(nep_lat_1980);
errbar = [std(nep_lat_1980);std(nep_lat_1980)];
hold on; 
shadedErrorBar(x, y, errbar, 'lineprops', {'color',[0.5, 0.5, 0.5],'markerfacecolor',[0.5, 0.5, 0.5]});
hold on; boxplot(nep585_2015_20int,'position',X1,'labels',X0,'PlotStyle','compact','color',[0, 0.4470, 0.7410]);
%hold on;boxplot(nep126_2100_20int,'position',X4,'PlotStyle','compact','color',[0.9290, 0.6940, 0.1250]);
hold on;boxplot(nep585_2100_20int,'position',X4,'PlotStyle','compact','color',[0.8500, 0.3250, 0.0980]);
hold on; boxplot(nep585_2050_20int,'position',X2,'labels',X0,'PlotStyle','compact','color',[0.55 0.71 0]);
xlim([-60,90]);
ylim([-50,250]);
legend('historical CMIP6 results');
title('SSP585');
set(gcf,'Position',[100,100,800,500]);