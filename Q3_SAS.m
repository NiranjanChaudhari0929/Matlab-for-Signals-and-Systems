clear all;
clc;
close all;

Fs = 500000;  %Sample Freq = 500KHz ,first digit is 6th digit of BITS ID 
dt = 1/Fs;
StopTime = 0.020;     %seconds
t = (0:dt:StopTime);  %(start:interval:end)
Fc=1929;  %hertz ,it is 1 followed by last three digit of BITS ID
u1=heaviside(10e-3-t);   %This function is making signal only for 10ms
x=7*cos(2*pi*Fc*(t)).*u1;

%Plot signal vs Time
figure;
plot(t,x);
grid on;

xlim([0 20e-3]);
ylim([-7 7]);

xlabel('Time (in s)');
ylabel('Amplitude (V)');
title('x(t)');
b=0.009;     %Last digit of BITS ID = 9
t1 = (t-b);  %x(t+b)
t2=t1*(1/(-1.5));   %x(-1.5t + b)

figure;

subplot(3,1,1);
    plot(t,x);
    xlabel('Time (in s)');
    ylabel('Amplitude (V)');
    title('x(t)');
    xlim([0 20e-3]);
    ylim([-7 7]);
subplot(3,1,2);
    plot(t1,x);
    xlabel('Time (in s)');
    ylabel('Amplitude (V)');
    title('x(t + b)');
    xlim([0 20e-3]);
    ylim([-7 7]);
subplot(3,1,3);
    plot(t2,x);
    xlabel('Time (in s)');
    ylabel('Amplitude (V)');
    title('x_{2}(t) = x(-3t/2 + b)');
    xlim([0 20e-3]);
    ylim([-7 7]);