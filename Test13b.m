clear all

X1=[29.8 30.6 29.0 27.7 29.9 29.6 30.5 31.1 30.2 28.1 29.4 28.5];
X2=[31.5 30.2 31.2 29.0 31.4 31.1 32.5 33.0 31.3 30.9 30.7 29.9];
n1=length(X1);
n2=length(X2);

alpha = 0.05;
%tail=1
%right tailed test
[H,p,ci,stats] = ttest2(X1,X2,alpha,1,'equal');

tt= tinv(1-alpha,stats.df);


fprintf('The observed value is TS0=%f\n',stats.tstat);
fprintf('The P value is P=%f\n',p);
fprintf('Rejection region is (%f, %f)\n', tt,Inf);

if (H==0)
  fprintf('Brand B is faster on average\n');
  fprintf("We do not reject H0\n");
else
  fprintf('brand A seems faster on average\n');
  fprintf("We reject H0\n");
end




