clear all
X=[7 7 4 5 9 9 4 12 8 1 8 7 3 13 2 1 17 7 12 5 6 2 1 13 14 10 2 4 9 11 3 5 12 6 10 7];
n=length(X)

sigma=5;
notalfa=input("alpfaph:");
alfa=abs(notalfa-1);
meanx=mean(X);
z1=norminv(1-alfa/2);
z2=norminv(alfa/2);
lt=meanx-(sigma/sqrt(n)*z1);
ut=meanx-(sigma/sqrt(n)*z2);
fprintf("the confidence for known sigma is interval %1.3f and %1.3f\n",lt,ut);

s=std(X);
t1=tinv(1-alfa/2,n-1);
t2=tinv(alfa/2,n-1);
lt= meanx- (s/sqrt(n)*t1);
ut=meanx- (s/sqrt(n)*t2);

fprintf("the confidence for unknown sigma is interval %1.3f adn %1.3f\n",lt,ut);


sq=var(X);
chi1=chi2inv(1-alfa/2,n-1);

chi2=chi2inv(alfa/2,n-1);

lt=((n-1)*sq/chi1);
ut=((n-1)*sq/chi2);
stdlt=sqrt(lt);
stdut=sqrt(ut);


fprintf("the confidence for the variance lower %1.3f , standard %1.3f and upper %1.3f , standard %1.3f \n",lt,stdlt,ut,stdut);

pr=[22.4 21.7 22.4 21.7 21.6 23.3 22.4 21.6 24.8 20.0];
re=[17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1=length(pr);
n2=length(re);
notalfa=input("alpfaph:");
alfa=abs(notalfa-1);
meanpr=mean(pr);
meanre=mean(re);
s1=var(pr);
s2=var(re);
sp=sqrt(((n1-1)*var(pr)+(n2-1)*var(re))/(n1+n2-2));
t1=tinv(1-alfa/2,n1+n2-2);
lt=meanpr-meanre-t1*sp*sqrt(1/n1+1/n2);
ut=meanpr-meanre+t1*sp*sqrt(1/n1+1/n2);
fprintf("the confidence interval %1.3f %1.3f\n", lt,ut);

c=(s1/n1)/(s1/n1+s2/n2);
n=1/(c^2/(n1-1)+(1-c)^2/(n2-1));
t2=tinv(1-alfa/2,n);
lt=meanpr-meanre-t2*sqrt(s1/n1+s2/n2);
ut=meanpr-meanre+t2*sqrt(s1/n1+s2/n2);

fprintf("the confidence interval %1.3f %1.3f\n", lt,ut);


f1=finv(1-alfa/2,n1-1,n2-1);
f2=finv(alfa/2, n1-1,n2-1);
lowc=(1/f1 *s1/s2);
uppc=(1/f2 *s1/s2);
stdlt=sqrt(lowc);
stdut=sqrt(uppc);

fprintf("the confidence interval %1.3f %1.3f %1.3f  %1.3f", stdlt,lowc ,stdut,uppc);







