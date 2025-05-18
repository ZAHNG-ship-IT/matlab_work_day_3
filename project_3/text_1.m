syms t;
f1 = 2 * exp(-3*t) * heaviside(t);
f1_fourier = (fourier((f1),t,w));
y1 =simplify(f1_fourier);
f2 = 2 * exp(3*t) * heaviside(-t);
f2_fourier =  (fourier((f2),t,w));
y2 =simplify(f2_fourier);
figure
subplot(2,2,1); fplot(f1);
subplot(2,2,2); fplot(f2);
subplot(2,2,3); fplot(abs(y1), [-10, 10], 'LineWidth', 1.5);
subplot(2,2,4); fplot((y2),[-10,10], 'LineWidth', 1.5);