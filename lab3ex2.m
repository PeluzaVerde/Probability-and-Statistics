p=input("p\n");
if(p>=0.05 && p<=0.95)
for n=0:10:100
    x=0:n;
    aux1=binopdf(0:n,n,p);
    aux2=normpdf(0:n,n*p,sqrt(n*p*(1-p)));
    plot(x,aux1,x,aux2);
    title("bino & bino approx with n="+n);
    legend("binomial","bino approx with normal")
    pause(0.5);
end
else
    error("wrong p");
end

