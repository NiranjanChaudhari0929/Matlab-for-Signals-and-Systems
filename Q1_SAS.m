N = 18;
t = linspace(0, 1, 1000);
x_m1 = zeros(size(t));
for i = 0:1
    x_m1 = x_m1 + (1/(2*i+1))*sin((2*i+1)*2*pi*N*t);
end
figure;
plot(t, x_m1,'r');
xlabel('Time (s)'); 
ylabel('Amplitude');
title('x(t) for different M');
hold on;
x_m2 = zeros(size(t));
for i = 0:2
    x_m2 = x_m2 + (1/(2*i+1))*sin((2*i+1)*2*pi*N*t);
end
plot(t,x_m2,'g');
x_m8 = zeros(size(t));
for i = 0:8
    x_m8 = x_m8 + (1/(2*i+1))*sin((2*i+1)*2*pi*N*t);
end
plot(t,x_m8,'b');
legend('M=1','M=2','M=8');
figure;
h = (sin(8*pi*N*t))/(8*pi*N*t);
y = conv(x_m8, h, 'same');
plot(t,y);
xlabel('Time (s)');
ylabel('Amplitude (V)');
title('LTI System Response with M = 8');
Y = fftshift(fft(y));
Fs = 1000;
f = linspace(-Fs/2, Fs/2, length(t));
figure;
plot(f, abs(Y));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Fourier transform of y(t)');
