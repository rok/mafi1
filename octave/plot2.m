% analiticna porazdelitev
YA = [load('-ascii','podatki/arunup.txt')];
YAc = [load('-ascii','podatki/arunupc.txt')];

bar([1:10],[YA,YAc])
ylabel('P(M)','FontSize',14);
xlabel('M','FontSize',14);
set (gca(), 'xlim', [0.5, 6.5]);
title('<N> = 1','FontSize',14);

print -dpng plot2.png