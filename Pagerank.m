function Pagerank=Pagerank(q,alpha,maxiter)
n=size(q,1);
r=(1/n)*ones(n,1);
e=ones(n,1);
d=~any(q);
P=q+(1/n)*e*d;
A=alpha*P+(1-alpha)*(1/n)*e*e';
i=0;
while((r-A*r)~=0)
    i=i+1;
    r=A*r;
    if (i>=maxiter) 
        break;
    end
end
Pagerank=r;
end
