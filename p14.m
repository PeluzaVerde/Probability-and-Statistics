clear
clc
close all

%14
%a
fprintf('\na)\n')
X1=[4.6,0.7,4.2,1.9,4.8,6.1,4.7,5.5,5.4];
n1=length(X1);
X2=[2.5,1.3,2.0,1.8,2.7,3.2,3.0,3.5,3.4];
n2=length(X2);

alfa = 0.05;
tt1=finv(alfa/2,n1-1,n2-1);
tt2=finv(1-alfa/2,n1-1,n2-1);
tail=0;

[H,P,Ci,STATS] = vartest2(X1,X2,alfa,tail);

fprintf("H0=%f\n",H);
fprintf("P=%f\n",P);
fprintf("TS0=%f\n",STATS.fstat);
fprintf("The rejection region is (%f,%f)U(%f,%f)\n",-Inf,tt1,tt2,Inf);

if(H==0)
    fprintf("The population variances do NOT differ\n");
    fprintf("We do not reject H0\n");
else
    fprintf("The population variances DO differ\n");
    fprintf("We reject H0\n");
end

%b
fprintf('\nb)\n')

tail = 1;
[H,P,Ci,STATS] = ttest2(X1,X2,alfa,tail,'unequal');
tt = tinv(1-alfa, STATS.df);

fprintf('P=%f\n', P);
fprintf('TS0=%f\n', STATS.tstat);
fprintf('Rejection region is (%f, %f)\n', tt,Inf);

if (H==0)
  fprintf('Steel pipes do NOT lose more heat\n');
  fprintf("We do not reject H0\n");
else
  fprintf('Steel pipes DO lose more heat\n');
  fprintf("We reject H0\n");
end