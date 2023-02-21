clear all;
p=input('p=');
n=input('n=');
N=input('number of simulations=');

for i=1:N
    %the i'th simulation
    %X(i)=0;
    %fails(i)=0;
    %fails=1;
    
    j=0;
    fail=0;
    while j<n

        U=rand;
        x=U<p;
        if x==1
            j=j+1;
        end
        if x==0
            fail=fail+1;
        end


    end
 fails(i)=fail;

end
U_X = unique(fails); %unique val obt
n_X = hist(fails,length(U_X)); %frequency of those vals
rel_freq = n_X/N; %the rel freq
plot(U_X,rel_freq,'x',0:max(U_X),nbinpdf(0:max(U_X),n,p),'o');
title("Lab 4");
legend("Freq","geopdf")
