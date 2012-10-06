%%%%%%%%%%%%%%%%%%%%
% genpoiss
% Generira nakljucna stevila porazdeljena po  
% poissonovi porazdelitvi in jih shrani v datoteko.
% Koda: Standardna Octave
% 

function genpoiss

  lambda = 1;
  N=1000000;

  D = poissrnd(lambda,N,1);
  save('-ascii', 'podatki/octavePoiss.txt', 'D')

end