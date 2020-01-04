function x=newton(fname,x)

f0=feval(fname,x);
n=length(x);
count=0;

while (norm(f0) > 5e-10*max(1,norm(x)))*(count<6000)
    epsil=1e-5;
    E=eye(n)*epsil;
    
    D=E; % initialization; will be overwritten
    for k=1:n
        temp=feval(fname,x+E(:,k));
        D(:,k)=(temp-f0)/epsil;
    end
    
    x=x-D\f0;
    f0=feval(fname,x);
    count=count+1;
end

if count >=6000, x=inf; end

