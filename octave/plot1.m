% Izriše poissonove porazdelitve z lambda = 1,5,10

function plot1 ()
l=20;
x=[0:1:l];
bar(x,[poisspdf(x,1);poisspdf(x,5);poisspdf(x,10)]',2);
%plot(x,poisspdf(x,1),x,poisspdf(x,5),x,poisspdf(x,20));
xlabel('N','FontSize',14);
ylabel('P(N)','FontSize',14);

set (gca, 'xlim', [-1, l]);
set (gca,'XTick',[0:1:l]);
legend('<N>= 1','<N> = 5','<N> = 10','location','northeast');

print -dpng plot1.png
end