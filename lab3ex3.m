p=input("p\n");
if(p<=0.05 && p>0)
for n=30:10:100
    x=0:n;
    aux1=binopdf(0:n,n,p);
    aux2=poisspdf(0:n,n*p);
    plot(x,aux1,x,aux2);
    
    title("bino & bino approx with n="+n);
    legend("binomial","bino approx with poisson")
    pause(0.5);
end
else
    error("wrong p");
end
