M = 10000;
N = 100;

%%
filename = sprintf('C1/bsM%dN%d.csv', M,N);
bs = dlmread(filename);
x = 0:1/M:1;
y = bs(:,1);
bs = bs(:,2:M+2);

filename2 = sprintf('old/eulerexpliciteM%dN%d.csv', M,N);
x2 = 0:1/M:1;
ee = dlmread(filename2);
ee = (ee(:,2:M+2));

sum(sum(abs(ee-bs)))/M;
set(0, 'DefaultFigurePosition', [0 10 1500 1500])

x = [20 50 100 1000 10000];
y = [39.52 16.26 8.5154 1.5441 0.8468];

plot(x,y)
title('Erreur sur l''EDP par Euler Explicite selon M pour N = 100')
xlabel('M')
ylabel('Erreur')

% mesh(x,y,abs(ee-bs));
% titre = sprintf('Erreur entre le modèle de Black Scholes et la résolution de l''EDP par Euler Explicite pour M = %d N = %d', M,N);
% title(titre)
% xlabel('Temps', 'Rotation',20)
% ylabel('Prix de l''actif', 'Rotation',-30)
% zlabel('Erreur sur le prix de l''option') 
% 
% figname = sprintf('error_ee_bsM%dN%d.jpg', M,N);
% saveas(gcf,figname)

% mesh(x,y,bs);
% titre = sprintf('Calcul exacte du prix pour M = %d N = %d', M,N);
% 
% mesh(x,y,bs); titre = sprintf('Calcul du prix de l''option par la formule de Black Scholes Euler Explicite pour M = %d N = %d', M,N);
% 
% title(titre)
% xlabel('Temps')
% ylabel('Prix de l''actif')
% zlabel('Prix de l''option') 
% 
% figname = sprintf('prixbsM%dN%d.jpg', M,N);
% saveas(gcf,figname)

