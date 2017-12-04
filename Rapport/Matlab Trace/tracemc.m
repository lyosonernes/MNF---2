bs = dlmread('mcbsOptionEU.csv');
bs2 = dlmread('mcbsOptionEURVant2.csv');
x = bs(:,1);
y = bs(:,2);
zp = bs(:,2) + 1.96*sqrt(bs(:,3)./sqrt(bs(:,1)));
zm = bs(:,2) - 1.96*sqrt(bs(:,3)./sqrt(bs(:,1)));
bs = ones(size(x));
bs = bs(:,1)*54.9701;

x2 = bs2(:,1);
zp2 = bs2(:,2) + 1.96*sqrt(bs2(:,3)./sqrt(bs2(:,1)));
y2 = bs2(:,2);

hold('on')
plot(x,zp)
plot(x2,zp2)
% plot(x,zm)
plot(x,y)
plot(x2,y2)
%plot(x,bs)
% 
legend('Intervalle de confiance sans réduction de variance','Intervalle de confiance avec réduction de variance','Méthode sans réduction de variance','Méthode avec réduction de variance')
title('Prix du call Down and In par Montecarlo avec et sans réduction de variance antithétiques')
xlabel('Nombre de simulation')
ylabel('Prix de l''option')