N = 10;
omega0 = 2 * pi;
kC = 0.5;
nL = -10:1:-1;
nR = 1:1:10;
kL = 1i./(2.*pi.*nL);
kR = 1i./(2.*pi.*nR);
Dn = [kL, kC, kR];
t = -5:0.01:5;
f = myfs(Dn, omega0, t);

subplot(1, 2, 1);
plot(t, f);
xlabel('t');
ylabel('y');