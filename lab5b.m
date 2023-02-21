clear all

pr=[22.4 21.7 24.5 23.4 21.6 23.3 22.4 21.6 24.8 20.0];
re=[17.7 14.8 19.6 19.6 12.1 14.8 15.4 12.6 14.0 12.2];
n1=length(pr);
n2=length(re);
notalfa=input("alpfaph:");
alfa=abs(notalfa-1);
meanpr=mean(pr);
meanre=mean(re);
s1=var(pr);
s2=var(re);
sp=sqrt(((n1-1)*s1+(n2-1)*s2)/(n1+n2-2));
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



