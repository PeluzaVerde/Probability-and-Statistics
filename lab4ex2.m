p=input('p=');
n=input('n=');
N=input('number of simulations=');

for i=1:N
    %the i'th simulation
    X(i)=0;
    for j=1:n
        U=rand;
        X(i)=X(i)+(U<p);
    end

end
%[i:N;X];
%U=rand(1,N);
%X=(U<p);


U_X = unique(X); %unique val obt
n_X = hist(X,length(U_X)); %frequency of those vals
rel_freq = n_X/N; %the rel freq

%[U_X; n_X]
%[U_X; rel_freq]

plot(U_X,rel_freq,'x',0:n,binopdf(0:n,n,p),'o');
title("Lab 4");
legend("Freq","binopdf")
