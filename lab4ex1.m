p=input('p=');
N=input('number of simulations=');

%for i=1:N
%    %the i'th simulation
%    U=rand;
%    X(i)=(U<p);
%
%end
%[i:N;X];
U=rand(1,N);
X=(U<p);


U_X = unique(X); %unique val obt
n_X = hist(X,length(U_X)); %frequency of those vals
rel_freq = n_X/N; %the rel freq

%[U_X; n_X]
[U_X; rel_freq]