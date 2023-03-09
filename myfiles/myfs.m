function fn = myfs(Dn,omega0,t)
%
% fn = myfs(Dn,omega0,t)
% % Evaluates the truncated Fourier Series at times t
%
% Dn -- vector of Fourier series coefficients %
% omega0 -- fundamental frequency
% t -- vector of times for evaluation %
% fn -- truncated Fourier series evaluated at t
    N = (length(Dn) - 1) / 2;
    fn = zeros(size(t));
    for k = -N:N
        Ck = Dn(k + N + 1);
        fn = fn + Ck * exp(1i * omega0 * k * t);
    end
end