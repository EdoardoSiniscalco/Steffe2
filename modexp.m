function r = modexp (x, y, n) 
    %x^0 = 1
    if (y == 0)
        r = 1;
        return;
    end

    %ricorrenza
    z = modexp(x, floor(y/2), n);

    if (mod(y, 2) == 0) %caso pari
        r = mod(z*z, n);
        return;
    else                % caso dispari
        r = mod(x*z*z, n);
        return;
    end
    
end
