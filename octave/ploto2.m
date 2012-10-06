Y = [load('-ascii','podatki/arunupc.txt'),load('-ascii','podatki/nrunups2.txt')];

subplot(2,2,1)
bar([1:10],Y);
ylabel('P(M),P´(M)','FontSize',11);
xlabel('M','FontSize',11);
set (gca(), 'xlim', [0.5, 1.5]);
ylim([min(Y(1,:))-0.001,max(Y(1,:))+0.001]);
title('M = 1','FontSize',11);

subplot(2,2,2)
bar([1:10],Y);
ylabel('P(M),P´(M)','FontSize',11);
xlabel('M','FontSize',11);
set (gca(), 'xlim', [1.5, 2.5]);
ylim([min(Y(2,:))-0.001,max(Y(2,:))+0.001]);
title('M = 2','FontSize',11);

subplot(2,2,3)
bar([1:10],Y);
ylabel('P(M),P´(M)','FontSize',11);
xlabel('M','FontSize',11);
set (gca(), 'xlim', [2.5, 3.5]);
ylim([0,max(Y(3,:))+0.001]);
title('M = 3','FontSize',11);

subplot(2,2,4)
bar([1:10],Y);
ylabel('P(M),P´(M)','FontSize',11);
xlabel('M','FontSize',11);
set (gca(), 'xlim', [3.5, 4.5]);
ylim([0,max(Y(4,:))+0.00001]);
title('M = 4','FontSize',11);

print -dpng plot6.png