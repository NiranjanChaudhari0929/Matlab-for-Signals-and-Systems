clear all;
clc;
close all;

s = tf('s');
a1=2;a2=2;a5=2;a7=2;
a3=9;b2=9;b3=9;
b1=2;b5=2;b8=2;
a6=4;a9=4;b6=4;b7=4;b10=4;b11=4;
b9=9;
a4=81;a8=81;
b4=0.5;

A = a1*10e+3*s^8 + a2*10e-9*s^7 + a3*10e+16*s^6 - a4*10e+2*s^5 + a5*10e+28*s^4 + a6*10e+12*s^3 + a7*10e+17*s^2 + a8*s + a9*10e+15;
B = b1*s^10 + b2*10*s^9 + b3*10e+11*s^8 + b4*10e+10*s^7 + b5*10e+15*s^6 + b6*10e+10*s^5 + b7*10e+15*s^4 + b8*10e+10*s^3 + b9*10e+10*s^2 + b10*10e+4*s + b11*1000;
H = A/B;

figure;
pzmap(H);

figure;
bode(H);