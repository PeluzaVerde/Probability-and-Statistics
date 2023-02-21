clear
clc
close all

%10
%a
fprintf('\na)\n')
X1=[1021,980,1017,988,1005,998,1014,985,995,1004,1030,1015,995,1023];
n1=length(X1);
X2=[1070,970,993,1013,1006,1002,1014,997,1002,1010,975];
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
[H,P,Ci,STATS] = ttest2(X1,X2,alfa,tail,'equal');
tt = tinv(1-alfa, STATS.df);

fprintf('P=%f\n', P);
fprintf('TS0=%f\n', STATS.tstat);
fprintf('Rejection region is (%f, %f)\n', tt,Inf);

if (H==0)
  fprintf('Supplier A is NOT more reliable\n');
  fprintf("We do not reject H0\n");
else
  fprintf('Supplier A IS more reliable\n');
  fprintf("We reject H0\n");
end