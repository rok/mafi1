function nrunups2 ()
D1 = load('-ascii','podatki/octavePoiss.txt');
Y1 = nrunup2 (D1);

D2 = load('-ascii','podatki/numpyPoiss.txt');
Y2 = nrunup2 (D2);

D3 = load('-ascii','podatki/octaveCustomPoiss.txt');
Y3 = nrunup2 (D3);

D4 = load('-ascii','podatki/phpCustomPoiss.txt');
Y4 = nrunup2 (D4);

D5 = load('-ascii','podatki/randPoissR.txt');
Y5 = nrunup2 (D5);

D6 = load('-ascii','podatki/octaveCustomPoissTru.txt');
Y6 = nrunup2 (D6);

Y = [Y1,Y2,Y3,Y5,Y4,Y6]
save('-ascii', 'podatki/nrunups2.txt', 'Y')
end