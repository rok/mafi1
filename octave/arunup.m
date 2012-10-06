%%%%%%%%%%%%%%%%%%%%
% arunup
% Izracuna verjetnosti da generator poissonove nakljucne
% porazdelitve pri danem lambda vrne narascujoc niz stevil 
% dolzine M, pri tem da je poisspdf(N,lambda) prvo stevilo. 
% Verjetnosti podnizov se izracunajo z rekurzivno funkcijo
% podzap(N,M,lambda). Vrne vektor vrjetnosti P(M).
%
% N = zacetna tocka niza
% M = dolzina narascujocega niza

function arunup()
  lambda = 1;
  M = [2:11];
  Nmin = 0;
  inf = 10;
  P1=[];
  P2=[];
  
  for i=M
    P1 = [P1, zap(Nmin,inf,i,lambda)];
    P2 = [P2, sum(prod(poisspdf(combntns(Nmin:inf,i),lambda),2))];
  end
  
  P1 = P1'/sum(P1);
  P2 = P2'/sum(P2);
  save('-ascii', 'podatki/arunup.txt', 'P1')
  save('-ascii', 'podatki/arunupc.txt', 'P2')
end 