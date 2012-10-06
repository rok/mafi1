% analiticna porazdelitev
% YA = [load('-ascii','podatki/arunup.txt')];
YAc = [load('-ascii','podatki/arunupc.txt')];

% numericno pridobljene porazdelitve
%YN = load('-ascii','podatki/nrunups.txt');
YN = load('-ascii','podatki/nrunups2.txt');

%colormap(gray);

bar([1:10],[YAc,YN])
ylabel('P(M),P´(M)','FontSize',14);
xlabel('M','FontSize',14);
set (gca(), 'xlim', [0.5, 6.5]);
legend('(1) Predvidena porazdelitev', ...
'(2) NumPy - random.poisson',...
'(3) Octave/Matlab - poissrnd',...
'(4) Octave/Matlab - rand + Devroye[3]', ...
'(5) R - rpois', ...
'(6) PHP rand@Windows + Devroye[3]', ...
'(7) Random.org + Devroye[3] (N=10^3)',...
'location','northeast');
title('<N> = 1','FontSize',14);

print -dpng plot5.png