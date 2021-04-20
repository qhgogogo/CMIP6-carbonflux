load('all_ts.mat');
load('global_budget.mat');
addpath('shadedErrorBar');

% colors=[0,0.3370,0.7410 ; 0.75,0.75,0;0.85,0.325,0.098;0.929,0.6964,0.125;0.29,0.694,0.125;...
%        0.494,0.184,0.556; 0.466,0.674,0.188;0.75,0.6,0.75;0,0.5,0;...
%        0.3610,0.745,0.933; 0 ,0.75,0.75;0.635,0.078,0.184];
   
   
colors=[0 ,0.75,0.75;0,0.3370,0.7410;0.76,0.88,0.12;  0, 0.5, 0;1 0.4 0.6;...
1, 0, 0; 0.90 0.90 0.0;0.9290, 0.6940, 0.1250;0.5694, 0.5194, 0.75;0.4940, 0.1840, 0.5560];  

nep_126tsall = [nep_his_ts(:,131:165),nep_126ts];
nep_245tsall = [nep_his_ts(:,131:165),nep_245ts];
nep_370tsall = [nep_his_ts(:,131:165),nep_370ts];
nep_585tsall = [nep_his_ts(:,131:165),nep_585ts];
    
nep_126tsall_mean = mean(nep_126tsall);
nep_245tsall_mean = mean(nep_245tsall);
nep_370tsall_mean = mean(nep_370tsall);
nep_585tsall_mean = mean(nep_585tsall);

nep_126tsall_nor50 = [nep_his_ts_nor(:,131:165),nep_126ts_nor50];
nep_245tsall_nor50 = [nep_his_ts_nor(:,131:165),nep_245ts_nor50];
nep_370tsall_nor50 = [nep_his_ts_nor(:,131:165),nep_370ts_nor50];
nep_585tsall_nor50 = [nep_his_ts_nor(:,131:165),nep_585ts_nor50];
    
nep_126tsall_nor_mean = mean(nep_126tsall_nor50);
nep_245tsall_nor_mean = mean(nep_245tsall_nor50);
nep_370tsall_nor_mean = mean(nep_370tsall_nor50);
nep_585tsall_nor_mean = mean(nep_585tsall_nor50);


%replot
%%  nep
figure;
subplot(2,1,1);
y = nep_126tsall_mean(1:36)/10^15;% your mean vector;
x = 1980:2015;
errbar=[std(nep_126tsall(:,1:36)/10^15);std(nep_126tsall(:,1:36)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.3,0.3,0.3],'markerfacecolor',[0.3,0.3,0.3]});
% for i =1:10
%   hold on;
%   plot(x,nep_126tsall(i,:)/10^15,'color',colors(i,:),'linewidth',1);
% end
y = global_budget(2,1:36);
x = global_budget(1,1:36);
%errbar = [repmat(0.9,length(global_budget(1,1:36)),1),repmat(0.9,length(global_budget(1,1:36)),1)];
errbar = repmat(0.9,length(global_budget(1,1:36)),1);
hold on
%errorbar(x, y, errbar, 'color', [245/260,121/260,0],'linewidth',1);
errorbar(x, y, errbar, 'c','linewidth',1);

hold on;
y = nep_126tsall_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_126tsall(:,36:end)/10^15);std(nep_126tsall(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-b');

hold on;
y = nep_245tsall_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_245tsall(:,36:end)/10^15);std(nep_245tsall(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-g');

hold on;
y = nep_370tsall_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_370tsall(:,36:end)/10^15);std(nep_370tsall(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops',{'color',[245/260,121/260,0],'markerfacecolor',[245/260,121/260,0]});

hold on;
y = nep_585tsall_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_585tsall(:,36:end)/10^15);std(nep_585tsall(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-r');
hold on;
plot(repmat(2015,251,1),-5:0.1:20,'--' ,'color',[0.3,0.3,0.3] )

x = 2104;
y = nep_126tsall_mean(end)/10^15;
errbar = mean(std(nep_126tsall(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'b','linewidth',2);

x = 2108;
y = nep_245tsall_mean(end)/10^15;
errbar = mean(std(nep_245tsall(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'g','linewidth',2);

x = 2112;
y = nep_370tsall_mean(end)/10^15;
errbar = mean(std(nep_370tsall(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'color',[245/260,121/260,0],'linewidth',2);

x = 2116;
y = nep_585tsall_mean(end)/10^15;
errbar = mean(std(nep_585tsall(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'r','linewidth',2);
xlabel('Year')
xlim([1980,2120]);
set(gca,'xtick', [1980, 2000, 2020, 2040, 2060,2080,2100])
ylim([-5,20]);
%ylim([-10,30]);
 ylabel('Global NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,-20,800,1200]);
box on;
set(gca,'linewidth',1)
legend('historical','GCP','SSP126','SSP245','SSP370','SSP585')

%north
subplot(2,1,2);
y = nep_126tsall_nor_mean(1:36)/10^15;% your mean vector;
x = 1980:2015;
errbar=[std(nep_126tsall_nor50(:,1:36)/10^15);std(nep_126tsall_nor50(:,1:36)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops',{'color',[0.3,0.3,0.3],'markerfacecolor',[0.3,0.3,0.3]});
% for i =1:10
%   hold on;
%   plot(x,nep_126tsall(i,:)/10^15,'color',colors(i,:),'linewidth',1);
% end

hold on;
y = nep_126tsall_nor_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_126tsall_nor50(:,36:end)/10^15);std(nep_126tsall_nor50(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-b');

hold on;
y = nep_245tsall_nor_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_245tsall_nor50(:,36:end)/10^15);std(nep_245tsall_nor50(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-g');

hold on;
y = nep_370tsall_nor_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_370tsall_nor50(:,36:end)/10^15);std(nep_370tsall_nor50(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops',{'color',[245/260,121/260,0],'markerfacecolor',[245/260,121/260,0]});

hold on;
y = nep_585tsall_nor_mean(36:end)/10^15;% your mean vector;
x = 2015:2100;
errbar=[std(nep_585tsall_nor50(:,36:end)/10^15);std(nep_585tsall_nor50(:,36:end)/10^15)];
shadedErrorBar(x, y, errbar, 'lineprops','-r');
hold on;
plot(repmat(2015,61,1),-2:0.1:4,'--' ,'color',[0.3,0.3,0.3])

x = 2104;
y = nep_126tsall_nor_mean(end)/10^15;
errbar = mean(std(nep_126tsall_nor50(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'b','linewidth',2);

x = 2108;
y = nep_245tsall_nor_mean(end)/10^15;
errbar = mean(std(nep_245tsall_nor50(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'g','linewidth',2);

x = 2112;
y = nep_370tsall_nor_mean(end)/10^15;
errbar = mean(std(nep_370tsall_nor50(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'color',[245/260,121/260,0],'linewidth',2);

x = 2116;
y = nep_585tsall_nor_mean(end)/10^15;
errbar = mean(std(nep_585tsall_nor50(:,end-4:end)/10^15));
hold on;
errorbar(x, y, errbar,'r','linewidth',2);
xlabel('Year')
xlim([1980,2120]);
set(gca,'xtick', [1980, 2000, 2020, 2040, 2060,2080,2100])
ylim([-2,4]);
%ylim([-10,30]);
 ylabel('NHL NEP flux(PgC/year)')
% legend('Multi-model mean','ACCESS-ESM1-5','BCC-CSM2-MR','CanESM5',... 
% 'NorESM2-LM','NorESM2-MM','CESM2-WACCM',...
% 'CMCC-CM2-SR5','EC-Earth3-Veg','IPSL-CM6A-LR',...
% 'MPI-ESM1-2-LR');
set(gcf,'Position',[100,-20,800,1200]);
box on;
set(gca,'linewidth',1)


