clear all

X1=[22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
X2=[17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1=length(X1);
n2=length(X2);



alpha = input('what is the confidence level?');
[H,p,ci,stats] = vartest2(X1,X2,alpha,1);

tt1= finv(alpha/2,n1-1, ...
    n2-2);
tt2=finv(alpha/2,n1-1,n2-2);



if (p>alpha)
    fprintf('standard is met\n');
    fprintf('we dont reject H0\n');
    
end

if (p<=alpha)
    fprintf('standard is not met\n');
    fprintf('we reject H0\n');
end
RR=[-inf,tt1,tt2,Inf];
fprintf('the rejection region is(%f, %f) U (%f, %f)\n',RR);

fprintf('The observed value is %f\n',stats.fstat);
fprintf('The P value is %f\n',p);



[H,P,ci,Stats] =ttest2(X1,X2,alpha,0,'equal')