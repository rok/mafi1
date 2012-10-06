%%%%%%%%%%%%%%%%%%%%
% zap
% Rekurzivno izracuna verjetnost da generator 
% poissonove nakljucne porazdelitve pri lambda 
% vrne strogo narascajoc niz stevil dolzine M.
%
% N = zacetna tocka podniza
% M = dolzina narascujocega niza

function P = zap(Nmin,inf,M,lambda)
  
  if M == 1
    P = 1 - poisscdf(Nmin-1,lambda);
    
  else
    P = 0;
    for i=Nmin:inf,
        P = P + poisspdf(i,lambda) * zap(i+1,inf,M-1,lambda);
    end
  end

end