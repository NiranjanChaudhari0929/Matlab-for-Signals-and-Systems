clear all;
clc;
close all;

num = [1, 9, 1];
den = [1, -2, 1, -9];

figure; %P-Z plot
zplane(num, den);
grid on
title('Pole-Zero Plot');
legend('Zero','Pole','Unit Circle');

figure; %Freq response plot
freqz(num, den, -2*pi:1e-2:2*pi);
