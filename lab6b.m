clear all
X=[7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 14 10 2 4 9 11 3 5 12 6 10 7];
n=length(X)

alpha = input('what is the confidence level?');
%
%alpha = 0.05;
[H,p,ci,stats] = ttest(X,5.5,alpha,1)

%tt= norminv(alpha);
tt= tinv(alpha,n-1);


if (H==0)
    fprintf('standard is met\n');
    fprintf('we dont reject H0\n');
end

if (H==1)
    fprintf('standard is not met\n');
    fprintf('we reject H0\n');
end

fprintf('the rejection region is(%f, %f)\n',-inf, tt);

fprintf('The observed value is %f\n',stats.tstat);
fprintf('The P value is %f\n',p);