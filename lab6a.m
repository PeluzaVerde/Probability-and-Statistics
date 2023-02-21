clear all
X=[7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 14 10 2 4 9 11 3 5 12 6 10 7];
n=length(X)

sigma= 5;
alpha = input('what is the confidence level?');
%
%alpha = 0.05;
[H,p,ci,zval] = ztest(X,9,5,alpha,-1)

tt= norminv(alpha);


if (zval>tt)
    fprintf('standard is met\n');
    fprintf('we dont reject H0\n');
end

if (zval<=tt)
    fprintf('standard is not met\n');
    fprintf('we reject H0\n');
end

fprintf('the rejection region is(%f, %f)\n',-inf, tt);

fprintf('The observed value is %f\n',zval);
fprintf('The P value is %f\n',p);
