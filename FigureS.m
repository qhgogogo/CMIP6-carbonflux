
load('all_ts.mat');

addpath('shadedErrorBar');

nep_126ts_mean=mean(nep_126ts);
nep_245ts_mean=mean(nep_245ts);
nep_370ts_mean=mean(nep_370ts);
nep_585ts_mean=mean(nep_585ts);

npp_126ts_mean=mean(npp_126ts);
npp_245ts_mean=mean(npp_245ts);
npp_370ts_mean=mean(npp_370ts);
npp_585ts_mean=mean(npp_585ts);

rh_126ts_mean=mean(rh_126ts);
rh_245ts_mean=mean(rh_245ts);
rh_370ts_mean=mean(rh_370ts);
rh_585ts_mean=mean(rh_585ts);

nep_126ts_nor_mean=mean(nep_126ts_nor50);
nep_245ts_nor_mean=mean(nep_245ts_nor50);
nep_370ts_nor_mean=mean(nep_370ts_nor50);
nep_585ts_nor_mean=mean(nep_585ts_nor50);

npp_126ts_nor_mean=mean(npp_126ts_nor50);
npp_245ts_nor_mean=mean(npp_245ts_nor50);
npp_370ts_nor_mean=mean(npp_370ts_nor50);
npp_585ts_nor_mean=mean(npp_585ts_nor50);

rh_126ts_nor_mean=mean(rh_126ts_nor50);
rh_245ts_nor_mean=mean(rh_245ts_nor50);
rh_370ts_nor_mean=mean(rh_370ts_nor50);
rh_585ts_nor_mean=mean(rh_585ts_nor50);

ts_126ts_mean=mean(ts_126ts);
ts_245ts_mean=mean(ts_245ts);
ts_370ts_mean=mean(ts_370ts);
ts_585ts_mean=mean(ts_585ts);

ts_126ts_nor_mean=mean(ts_126ts_nor50);
ts_245ts_nor_mean=mean(ts_245ts_nor50);
ts_370ts_nor_mean=mean(ts_370ts_nor50);
ts_585ts_nor_mean=mean(ts_585ts_nor50);

%colors=[0,0.3370,0.7410 ; 0.75,0.75,0;0.85,0.325,0.098;0.929,0.6964,0.125;0.29,0.694,0.125;...
%       0.494,0.184,0.556; 0.466,0.674,0.188;0.75,0.6,0.75;0,0.5,0;...
%       0.3610,0.745,0.933; 0 ,0.75,0.75;0.635,0.078,0.184];
%%nep connect

colors=[0 ,0.75,0.75;0,0.3370,0.7410;0.76,0.88,0.12;  0, 0.5, 0;1 0.4 0.6;...
    1, 0, 0; 0.90 0.90 0.0;0.9290, 0.6940, 0.1250;0.5694, 0.5194, 0.75;0.4940, 0.1840, 0.5560];  
   
   
   
%%  nep
figure;
subplot(4,2,1)
y = nep_126ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_126ts/10^15);std(nep_126ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,nep_126ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-10,30]);
ylabel('Global NEP flux(PgC/year)')
legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,2)
y = nep_126ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_126ts_nor50/10^15);std(nep_126ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,nep_126ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-5, 5]);
ylabel('NHL NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,3)
y = nep_245ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_245ts/10^15);std(nep_245ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,nep_245ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-10,30]);
ylabel('Global NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,4);
y = nep_245ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_245ts_nor50/10^15);std(nep_245ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,nep_245ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-5,5]);
ylabel('NHL NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,5)
y = nep_370ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_370ts/10^15);std(nep_370ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,nep_370ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-10,30]);
ylabel('Global NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,6)
y = nep_370ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_370ts_nor50/10^15);std(nep_370ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,nep_370ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-5,5]);
ylabel('NHL NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)


subplot(4,2,7)
y = nep_585ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_585ts/10^15);std(nep_585ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,nep_585ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-10,30]);
ylabel('Global NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,8)
y = nep_585ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_585ts_nor50/10^15);std(nep_585ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,nep_585ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([-5,5]);
ylabel('NHL NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

%% npp
figure;
subplot(4,2,1)
y = npp_126ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_126ts/10^15);std(npp_126ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,npp_126ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,150]);
ylabel('Global NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,2)
y = npp_126ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_126ts_nor50/10^15);std(npp_126ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,npp_126ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([7,15]);
ylabel('NHL NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,3)
y = npp_245ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_245ts/10^15);std(npp_245ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,npp_245ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,200]);
ylabel('Global NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,4)
y = npp_245ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_245ts_nor50/10^15);std(npp_245ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,npp_245ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,5)
y = npp_370ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_370ts/10^15);std(npp_370ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,npp_370ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,200]);
ylabel('Global NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,6)
y = npp_370ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_370ts_nor50/10^15);std(npp_370ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,npp_370ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,7)
y = npp_585ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_585ts/10^15);std(npp_585ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,npp_585ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,230]);
ylabel('Global NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,8)
y = npp_585ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(npp_585ts_nor50/10^15);std(npp_585ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,npp_585ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
% ylabel('NHL NPP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

%% RH
figure;
subplot(4,2,1)
y = rh_126ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_126ts/10^15);std(rh_126ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,rh_126ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,150]);
ylabel('Global RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,2)
y = rh_126ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_126ts_nor50/10^15);std(rh_126ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,rh_126ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,3)
y = rh_245ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_245ts/10^15);std(rh_245ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,rh_245ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,180]);
ylabel('Global RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,4)
y = rh_245ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_245ts_nor50/10^15);std(rh_245ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,rh_245ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,5)
y = rh_370ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_370ts/10^15);std(rh_370ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,rh_370ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,200]);
ylabel('Global RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,6)
y = rh_370ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_370ts_nor50/10^15);std(rh_370ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,rh_370ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)


subplot(4,2,7)
y = rh_585ts_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_585ts/10^15);std(rh_585ts/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,rh_585ts(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylim([0,220]);
ylabel('Global RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,8)
y = rh_585ts_nor_mean/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(rh_585ts_nor50/10^15);std(rh_585ts_nor50/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,rh_585ts_nor50(i,:)/10^15,'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL RH flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
set(gca,'linewidth',4)
box on;
set(gca,'linewidth',1)
%% TS

figure;
subplot(4,2,1)
y = ts_126ts_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_126ts);std(ts_126ts)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,ts_126ts(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('Global TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,2)
y = ts_126ts_nor_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_126ts_nor50);std(ts_126ts_nor50)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,ts_126ts_nor50(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,3)
y = ts_245ts_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_245ts);std(ts_245ts)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,ts_245ts(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('Global TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,4);
y = ts_245ts_nor_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_245ts_nor50);std(ts_245ts_nor50)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,ts_245ts_nor50(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,5)
y = ts_370ts_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_370ts);std(ts_370ts)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,ts_370ts(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('Global TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,6)
y = ts_370ts_nor_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_370ts_nor50);std(ts_370ts_nor50)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,ts_370ts_nor50(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)


subplot(4,2,7)
y = ts_585ts_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_585ts);std(ts_585ts)];
shadedErrorBar(x, y, errbar, 'lineprops', '-b');
for i =1:10
  hold on;
  plot(x,ts_585ts(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('Global TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)

subplot(4,2,8)
y = ts_585ts_nor_mean;% your mean vector;
x = 2015:2100;
errbar=[std(ts_585ts_nor50);std(ts_585ts_nor50)];
shadedErrorBar(x, y, errbar, 'lineprops', '-g');
for i =1:10
  hold on;
  plot(x,ts_585ts_nor50(i,:),'color',colors(i,:),'linewidth',1);
end
xlabel('Year')
xlim([2015,2100]);
ylabel('NHL TS(^oC)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,20,900,900]);
box on;
set(gca,'linewidth',1)


