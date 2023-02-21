%10
%a
fprintf('\na)\n')
X1=[46,37,39,48,47,44,35,31,44,37];
n1=length(X1);
X2=[35,33,31,35,34,30,27,32,31,31];
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
fprintf('\nb)\n');
if(H==0)
    t=tinv(1-alfa/2,n1+n2-2);
    sp=sqrt(((n1-1)*var(X1)+(n2-1)*var(X2))/(n1+n2-2));
    lower_bound=mean(X1)-mean(X2)-t*sp*sqrt(1/n1+1/n2);
    upper_bound=mean(X1)-mean(X2)+t*sp*sqrt(1/n1+1/n2);
else
    c=(var(X1)/n1)/(var(X1)/n1+var(X2)/n2);
    invn=((c*c)/(n1-1))+(((1-c)*(1-c))/(n2-1));
    n=(invn)^(-1);
    t=tinv(1-alfa/2,n);
    lower_bound=mean(X1)-mean(X2)-t*sqrt(var(X1)/n1+var(X2)/n2);
    upper_bound=mean(X1)-mean(X2)+t*sqrt(var(X1)/n1+var(X2)/n2);
end
 fprintf("Confidence interval for the diff of the true means is (%f,%f)\n",lower_bound,upper_bound);
 
