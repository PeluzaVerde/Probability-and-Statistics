p=input('p=');
n=20;
N=input('number of simulations=');

for i=1:N
    %the i'th simulation
    X(i)=0;
    %fails=1;
    U=rand;
        while U<p 
        X(i)=X(i)+(U<p);
        U=rand;
        %fails=fails+1;
        end

end
U_X = unique(X); %unique val obt
n_X = hist(X,length(U_X)); %frequency of those vals
rel_freq = n_X/N; %the rel freq
plot(U_X,rel_freq,'x',0:max(U_X),geopdf(0:max(U_X),p),'o');
title("Lab 4");
legend("Freq","geopdf")
