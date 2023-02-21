clear all

X1=[29.8 30.6 29.0 27.7 29.9 29.6 30.5 31.1 30.2 28.1 29.4 28.5];
X2=[31.5 30.2 31.2 29.0 31.4 31.1 32.5 33.0 31.3 30.9 30.7 29.9];
n1=length(X1);
n2=length(X2);


tail=0;
alpha = 0.05; %input('what is the confidence level?');
[H,p,ci,stats] = vartest2(X1,X2,alpha,tail);

tt1= finv(alpha/2,n1-1, ...
    n2-2);
tt2=finv(alpha/2,n1-1,n2-2);

fprintf("H0=%f\n",H);
fprintf("The P value is P=%f\n",p);
fprintf("The observed value is TS0=%f\n",stats.fstat);
fprintf("The rejection region is (%f,%f)U(%f,%f)\n",-Inf,tt1,tt2,Inf);
%H is X1, p is X2


if (H==0)
    fprintf("The population variances do NOT differ\n");
    fprintf('we dont reject H0\n');
    
else
    fprintf("The population variances DO differ\n");
    fprintf("We reject H0\n");
end
