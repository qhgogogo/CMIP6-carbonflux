addpath('othercolor\othercolor');
load('trend_spatial.mat');
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
mlabel on
plabel on;
setm(gca,'MLabelParallel',0)
trend126_nor(isnan(trend126_nor)) = 0;
geoshow(latn,lonn,trend126_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend126_nor,'DisplayType','surface')
%colorscheme = othercolor('RdBu11',101) ;
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
caxis([-0.4,0.4]);
c.Label.String= 'Trend of NEP flux(gC/m^2/year)';
load coastlines;
plotm(coastlat,coastlon,'k-');
latn126=latn;
lonn126=lonn;
latn126(sig126_nor>0.05) =NaN;
lonn126(sig126_nor>0.05) =NaN;
latn126(isnan(sig126_nor)) =NaN;
lonn126(isnan(sig126_nor)) =NaN;
plotm(latn126,lonn126,'k.')
% title('NHL NEP flux trend under SSP126');
set(gcf,'Position',[100,100,700,700]);

%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend245_nor(isnan(trend245_nor)) = 0;
geoshow(latn,lonn,trend245_nor,'DisplayType','texturemap');
%colorscheme = othercolor('RdBu11',101) ;
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
caxis([-0.4,0.4]);
c.Label.String= 'Trend of NEP flux(gC/m^2/year)';
load coastlines;
plotm(coastlat,coastlon,'k-','linewidth',1);
latn245=latn;
lonn245=lonn;
latn245(sig245_nor>0.05) =NaN;
lonn245(sig245_nor>0.05) =NaN;
latn245(isnan(sig245_nor)) =NaN;
lonn245(isnan(sig245_nor)) =NaN;
plotm(latn245(:),lonn245(:),'k.')
% title('NHL NEP flux trend under SSP245');
set(gcf,'Position',[100,100,700,700]);

%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend370_nor(isnan(trend370_nor)) = 0;
geoshow(latn,lonn,trend370_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend370_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
caxis([-0.4,0.4]);
c.Label.String= 'Trend of NEP flux(gC/m^2/year)';
load coastlines;
plotm(coastlat,coastlon,'k-');
latn370=latn;
lonn370=lonn;
latn370(sig370_nor>0.05) =NaN;
lonn370(sig370_nor>0.05) =NaN;
latn370(isnan(sig370_nor)) =NaN;
lonn370(isnan(sig370_nor)) =NaN;
%plotm(latn370,lonn370,'k.')
% title('NHL NEP flux trend under SSP370');
set(gcf,'Position',[100,100,700,700]);

%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend585_nor(isnan(trend585_nor)) = 0;
geoshow(latn,lonn,trend585_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
caxis([-0.4,0.4]);
c.Label.String= 'Trend of NEP flux(gC/m^2/year)';
load coastlines;
plotm(coastlat,coastlon,'k-');
latn585=latn;
lonn585=lonn;
latn585(sig585_nor>0.05) =NaN;
lonn585(sig585_nor>0.05) =NaN;
latn585(isnan(sig585_nor)) =NaN;
lonn585(isnan(sig585_nor)) =NaN;
plotm(latn585,lonn585,'k.')
% title('NHL NEP flux trend under SSP585');
set(gcf,'Position',[100,100,700,700]);


figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend126npp_nor(isnan(trend126npp_nor)) = 0;
geoshow(latn,lonn,trend126npp_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of NPP flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn126=latn;
lonn126=lonn;
latn126(sig126npp_nor>0.05) =NaN;
lonn126(sig126npp_nor>0.05) =NaN;
latn126(isnan(sig126npp_nor)) =NaN;
lonn126(isnan(sig126npp_nor)) =NaN;
%plotm(latn126,lonn126,'k.')
% title('NHL NPP flux trend under SSP126');
set(gcf,'Position',[100,100,700,700]);

%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend245npp_nor(isnan(trend245npp_nor)) = 0;
geoshow(latn,lonn,trend245npp_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of NPP flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn245=latn;
lonn245=lonn;
latn245(sig245npp_nor>0.05) =NaN;
lonn245(sig245npp_nor>0.05) =NaN;
latn245(isnan(sig245npp_nor)) =NaN;
lonn245(isnan(sig245npp_nor)) =NaN;
plotm(latn245,lonn245,'k.')
% title('NHL NPP flux trend under SSP245');
set(gcf,'Position',[100,100,700,700]);
%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend370npp_nor(isnan(trend370npp_nor)) = 0;
geoshow(latn,lonn,trend370npp_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of NPP flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn370=latn;
lonn370=lonn;
latn370(sig370npp_nor>0.05) =NaN;
lonn370(sig370npp_nor>0.05) =NaN;
latn370(isnan(sig370npp_nor)) =NaN;
lonn370(isnan(sig370npp_nor)) =NaN;
plotm(latn370,lonn370,'k.')
% title('NHL NPP flux trend under SSP370');
set(gcf,'Position',[100,100,700,700]);
%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend585npp_nor(isnan(trend585npp_nor)) = 0;
geoshow(latn,lonn,trend585npp_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of NPP flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn585=latn;
lonn585=lonn;
latn585(sig585npp_nor>0.05) =NaN;
lonn585(sig585npp_nor>0.05) =NaN;
latn585(isnan(sig585npp_nor)) =NaN;
lonn585(isnan(sig585npp_nor)) =NaN;
plotm(latn585,lonn585,'k.')
% title('NHL NPP flux trend under SSP585');
set(gcf,'Position',[100,100,700,700]);


figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend126rh_nor(isnan(trend126rh_nor)) = 0;
geoshow(latn,lonn,trend126rh_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of RH flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn126=latn;
lonn126=lonn;
latn126(sig126rh_nor>0.05) =NaN;
lonn126(sig126rh_nor>0.05) =NaN;
latn126(isnan(sig126rh_nor)) =NaN;
lonn126(isnan(sig126rh_nor)) =NaN;
plotm(latn126,lonn126,'k.')
% title('NHL RH flux trend under SSP126');
set(gcf,'Position',[100,100,700,700]);

%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend245rh_nor(isnan(trend245rh_nor)) = 0;
geoshow(latn,lonn,trend245rh_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of RH flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn245=latn;
lonn245=lonn;
latn245(sig245rh_nor>0.05) =NaN;
lonn245(sig245rh_nor>0.05) =NaN;
latn245(isnan(sig245rh_nor)) =NaN;
lonn245(isnan(sig245rh_nor)) =NaN;
plotm(latn245,lonn245,'k.')
% title('NHL RH flux trend under SSP245');
set(gcf,'Position',[100,100,700,700]);
%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend370rh_nor(isnan(trend370rh_nor)) = 0;
geoshow(latn,lonn,trend370rh_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of RH flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn370=latn;
lonn370=lonn;
latn370(sig370rh_nor>0.05) =NaN;
lonn370(sig370rh_nor>0.05) =NaN;
latn370(isnan(sig370rh_nor)) =NaN;
lonn370(isnan(sig370rh_nor)) =NaN;
plotm(latn370,lonn370,'k.')
% title('NHL RH flux trend under SSP370');
set(gcf,'Position',[100,100,700,700]);
%%
figure('Color','w')
axesm('eqaazim','MapLatLimit',[50 90])
axis off
framem on
gridm on
% mlabel on
% plabel on;
setm(gca,'MLabelParallel',0)
trend585rh_nor(isnan(trend585rh_nor)) = 0;
geoshow(latn,lonn,trend585rh_nor,'DisplayType','texturemap')
%geoshow(latn,lonn,trend585_nor,'DisplayType','surface')
colorscheme = othercolor('BuOrR_14',101) ;
colorscheme(51,:) = [1,1,1];
colormap(colorscheme);
c=colorbar;
c.Label.String= 'Trend of RH flux(gC/m^2/year)';
caxis([-3.0,3.0]);
load coastlines;
plotm(coastlat,coastlon,'k-');
latn585=latn;
lonn585=lonn;
latn585(sig585rh_nor>0.05) =NaN;
lonn585(sig585rh_nor>0.05) =NaN;
latn585(isnan(sig585rh_nor)) =NaN;
lonn585(isnan(sig585rh_nor)) =NaN;
plotm(latn585,lonn585,'k.')
% title('NHL RH flux trend under SSP585');
set(gcf,'Position',[100,100,700,700]);


%% test

% for n=1:10
% figure('Color','w')
% axesm('eqaazim','MapLatLimit',[50 90])
% axis off
% framem on
% gridm on
% mlabel on
% plabel on;
% setm(gca,'MLabelParallel',0)
% %geoshow(latn,lonn,trend126_nor,'DisplayType','texturemap')
% geoshow(latn,lonn,nep_year(n).nep126inter(nep_year(2).lat<-49,:,50),'DisplayType','surface')
% colorbar;
% load coastlines;
% plotm(coastlat,coastlon,'k-');
% end

 %  ratio change 
 ratio126=zeros(320,160);
 ratio245=zeros(320,160);
 ratio370=zeros(320,160);
 ratio585=zeros(320,160);
 
  pp2100= nanmean(nep126_spatial_mean(:,:,77:86),3);
  pp2015 =nanmean(nep126_spatial_mean(:,:,1:10),3);
  ratio126=(pp2100-pp2015)./pp2015*100;
  pp2100= nanmean(nep245_spatial_mean(:,:,77:86),3);
  pp2015 =nanmean(nep245_spatial_mean(:,:,1:10),3);
  ratio245=(pp2100-pp2015)./pp2015*100;
  pp2100= nanmean(nep370_spatial_mean(:,:,77:86),3);
  pp2015 =nanmean(nep370_spatial_mean(:,:,1:10),3);
  ratio370=(pp2100-pp2015)./pp2015*100;
  pp2100= nanmean(nep585_spatial_mean(:,:,77:86),3);
  pp2015 =nanmean(nep585_spatial_mean(:,:,1:10),3);
  ratio585=(pp2100-pp2015)./pp2015*100;

