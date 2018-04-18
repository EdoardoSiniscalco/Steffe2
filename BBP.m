m = 100; %cifra da trovare;
n = m-1;
%s1
s1 = 0;
for k = 0:n
    s1 = s1 + modexp(16,n-k,8*k+1)/(8*k+1);
end
t = 1;
while t > 1e-8
    k = k + 1;
    t = 16^(n-k)/(8*k+1);
    s1 = s1 + t;
end

%s2
s2 = 0;
for k = 0:n
    s2 = s2 + modexp(16,n-k,8*k+4)/(8*k+4);
end
t = 1;
while t > 1e-8
    k = k + 1;
    t = 16^(n-k)/(8*k+4);
    s2 = s2 + t;
end

%s3
s3 = 0;
for k = 0:n
    s3 = s3 + modexp(16,n-k,8*k+5)/(8*k+5);
end
t = 1;
while t > 1e-8
    k = k + 1;
    t = 16^(n-k)/(8*k+5);
    s3 = s3 + t;
end

%s4
s4 = 0;
for k = 0:n
    s4 = s4 + modexp(16,n-k,8*k+6)/(8*k+6);
end
t = 1;
while t > 1e-8
    k = k + 1;
    t = 16^(n-k)/(8*k+6);
    s4 = s4 + t;
end

r = 4*s1 - 2*s2 - s3 - s4;
floor(mod(r,1)*16)
