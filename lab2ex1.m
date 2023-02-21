k=0;
n=input("input number of tries");
p=input("probability of success");
%pdf('bino',k,n,p)
%binopdf(0:n,n,p)
A=[0:n;binopdf(0:n,n,p)];
%binocdf(0:n,n,p)

plot(0:n,binopdf(0:n,n,p),"+")

title('The american title')
%legend('pdf')
hold on
plot(0:0.01:n,binocdf(0:0.01:n,n,p))

legend('pdf','cdf')
axis([-0.1,3.1,-0.1,1.1])
hold off

fprintf('%f\n',binopdf(0,n,p))
fprintf(' ')
fprintf('%f\n',1-binopdf(1,n,p))
fprintf(' ')
fprintf('%f\n',binocdf(2,n,p))
fprintf(' ')
fprintf('%f\n',binocdf(2,n,p)-binopdf(2,n,p))
fprintf(' ')
fprintf('%f\n',1-binocdf(1,n,p)+binopdf(1,n,p))
fprintf(' ')
fprintf('%f\n',1-binocdf(1,n,p))
fprintf(' ')
m=[rand(1,3)];
s=0;
for i=1:3
    if(m(1,i)>0.5)
        fprintf("head\n");
        s=s+1;
    else
        fprintf("tail\n");
    end


end

fprintf('No heads: %f\n',s)
fprintf("p=%f",binopdf(s,3,0.5))

