syms t w;

% 计算傅里叶变换
f1 = 2 * exp(-3*t) * heaviside(t);
f1_fourier = fourier(f1, t, w);  % 结果变量为 w
y1 = simplify(f1_fourier);

% 绘制幅度频谱
figure;
fplot(abs(y1), [-10, 10], 'LineWidth', 1.5);
xlabel('\omega (rad/s)');
ylabel('|F(\omega)|');
title('幅度频谱: |2/(3 + j\omega)|');
grid on;
