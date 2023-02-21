


[m,v] = unidstat(100)
[m,v] = binostat(100,0.5)
[m,v] = hygestat(10,1,9)
[m,v] = poisstat([1 2; 3 4])
p=0.1:0.2:0.9;
r=1:5;
[R,P]=meshgrid(r,p);
[m,v] = nbinstat(R,P)
[m,v] = geostat(0.5)
a=1:6;
b=2.*a;
[m,v] = unifstat(a,b)
mu=1;
sigma=1:5;
[m,v] = normstat(mu,sigma)
[m,v] = gamstat(1:5, 1:5)
[m,v] = expstat([1 10 100 1000])
a=1:6;
[m,v] = betastat(a,a)
nu =reshape(1:30, 6,5);
[m,v] = tstat(nu)
nu=5;
[m,v] = chi2stat(nu)
[m,v] = fstat(1:5,1:5)