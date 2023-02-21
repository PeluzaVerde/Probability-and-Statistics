clear
clc
close all


%a
X = [3.26,1.89,2.42,2.03,3.07,2.95,1.39,3.06,2.46,3.35,1.56,1.79,1.76,3.82,2.42,2.96];
n=length(X);
oneMinusAlfa=0.95;
alfa=abs(oneMinusAlfa-1);
meanX=mean(X);

s = std(X);
t = tinv(1-alfa/2,n-1);
lower_bound = meanX-(s/sqrt(n)*t);
upper_bound = meanX+(s/sqrt(n)*t);
fprintf("The conf interval for the mean(sigma unknwon) is (%f,%f)\n\n",lower_bound,upper_bound);


%b
alfa=0.01;
m=3;
n=length(X);
tt=tinv(alfa,n-1);
tail=-1;

[H,P,Ci,STATS]=ttest(X,m,alfa,tail);

fprintf("H0=%f\n",H);
fprintf("P=%f\n",P);
fprintf("TS0=%f\n",STATS.tstat);
fprintf("The rejection region is (%f,%f)\n",-Inf,tt);

if(H==0)
    fprintf("The nickles are not smaller than 3\n");
    fprintf("We do not reject H0\n");
else
    fprintf("The nickles are smaller than 3\n");
    fprintf("We reject H0\n");
end