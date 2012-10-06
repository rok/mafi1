%%%%%%%%%%%%%%%%%%%%
% urnd2poissrnd
% Generira nakljucna stevila porazdeljena po  
% poissonovi porazdelitvi in jih shrani v datoteko.
% Koda: Iz enakomerne porazdelitve poissonova
% rand2(N,a) da nakljucna stevila
function urnd2poissrnd()

lambda = 1;
l=100000;
r = zeros(l,1);
p = r;
j = (1:l)';
a=0;

while ~isempty(j)
  a = a + 1
  p = p - log(rand2(length(j),a));
  t = (p < lambda);
  j = j(t);
  p = p(t);
  r(j) = r(j) + 1;
end

save('-ascii', 'podatki/phpCustomPoiss.txt', 'r');

l=1000000;
r = zeros(l,1);
p = r;
j = (1:l)';

while ~isempty(j)
  p = p - log(rand(length(j),1));
  t = (p < lambda);
  j = j(t);
  p = p(t);
  r(j) = r(j) + 1;
end

save('-ascii', 'podatki/octaveCustomPoiss.txt', 'r');
end