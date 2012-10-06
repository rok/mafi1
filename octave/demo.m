%%%%%%%%%%%%%%%%%%%%
% demo

clear ; close all; clc

lambda = 1;
M = [2:11];
Nmin = 0;
Nmax = 10;

fprintf('Demo. Pritisni enter.\n');
pause;

poti = combntns(0:4,3)

fprintf('Mozna zaporedja. Pritisni enter.\n');
pause;

verjetnosti = poisspdf(poti,1)

fprintf('Verjetnosti posameznih korakov. Pritisni enter.\n');
pause;

verjetnosti_poti = prod(verjetnosti',1)'

fprintf('Verjetnosti poti. Pritisni enter.\n');
pause;

verjetnost = sum(verjetnosti_poti)

fprintf('Verjetnost dolzine zaporedja M. Pritisni enter.\n');
pause;