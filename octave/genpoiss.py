################################
# genpoiss.py
# Generira nakljucna stevila porazdeljena po  
# poissonovi porazdelitvi in jih shrani v datoteko.

import numpy

lambd = 1;
N=1000000;

D = numpy.random.poisson(lambd,N)
numpy.savetxt('numpyPoiss.txt', D, fmt='%d')