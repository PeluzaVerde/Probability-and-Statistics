ex1 = input("options: normal, student, chi2, fischer ","s");

switch ex1
    case "normal"
        fprintf("normal selected\n");
        miu=input("miu\n");
        sigma=input("sigma\n");
        alpha=input("alpha\n");
        beta=input("beta\n");
        if(alpha>=0 && alpha<=1 && beta>=0 && beta<=1)
        a1=normcdf(0,miu,sigma);
        a2=1-normcdf(0,miu,sigma);
        aux1=normcdf(-1,miu,sigma);
        aux2=normcdf(1,miu,sigma);
        b1=aux2-aux1;
        b2=aux1 +1-aux2;
        c=norminv(alpha,miu,sigma);
        d=norminv(1-beta,miu,sigma);
        else
            error("Bad alpha or beta")
        end


    case "student"
        fprintf("student selected\n");
        n=input("n\n");
        alpha=input("alpha\n");
        beta=input("beta\n");
        if(alpha>=0 && alpha<=1 && beta>=0 && beta<=1)
        a1=tcdf(0,n);
        a2=1-tcdf(0,n);
        aux1=tcdf(-1,n);
        aux2=tcdf(1,n);
        b1=aux2-aux1;
        b2=aux1 +1-aux2;
        c=tinv(alpha,n);
        d=tinv(1-beta,n);
                else
            error("Bad alpha or beta")
        end
    case "chi2"
        fprintf("chi2 selected\n");
        n=input("n\n");
        alpha=input("alpha\n");
        beta=input("beta\n");
        if(alpha>=0 && alpha<=1 && beta>=0 && beta<=1)
        a1=chi2cdf(0,n);
        a2=1-chi2cdf(0,n);      
        aux1=chi2cdf(-1,n);
        aux2=chi2cdf(1,n);
        b1=aux2-aux1;
        b2=aux1 +1-aux2;
        c=chi2inv(alpha,n);
        d=chi2inv(1-beta,n);
                else
            error("Bad alpha or beta")
        end


    case "fischer"
        fprintf("fischer selected\n");
        m=input("m\n");
        n=input("n\n");    
        alpha=input("alpha\n");
        beta=input("beta\n");
        if(alpha>=0 && alpha<=1 && beta>=0 && beta<=1)
        a1=fcdf(0,m,n);
        a2=1-fdf(0,m,n);      
        aux1=fcdf(-1,m,n);
        aux2=fcdf(1,m,n);
        b1=aux2-aux1;
        b2=aux1 +1-aux2;
        c=finv(alpha,m,n);
        d=finv(1-beta,m,n);
                else
            error("Bad alpha or beta")
        end
    otherwise
        fprintf("inexistent case\n");
end

fprintf("P(X<=0) :%f\n",a1);
fprintf("P(X>=0) :%f\n",a2);

fprintf("P(-1<=X<=1) :%f\n",b1);
fprintf("X<=-1 or P(X>=1) :%f\n",b2);

fprintf("X<xa %f\n",c);

fprintf("X>xb %f\n",d);