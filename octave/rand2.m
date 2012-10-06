%%%%%%%%%%%%%%%%%%%%
% rand2
% Prebere nakljucna stevila porazdeljena po  
% neki porazdelitvi.

function r = rand2(l,a)
  D = load('-ascii','podatki/phpRand.txt');
  r = D(l*(a):l*(a+1)-1);
end