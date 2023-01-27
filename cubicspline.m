
close all; clc,clear;
endtime=10;
freq=4;
s_rate=input('Enter the Sampling rate :');
t=0:0.01:endtime;
T=1/freq;
func_1=cos(2*pi*freq*t);
Fs=s_rate*freq;
Ts=1/Fs;
n=Fs;
ns=linspace(0,endtime,s_rate);
xs=cos(2*pi*freq*ns);
nc=linspace(0,endtime,endtime/0.01);
xc=interp1(ns,xs,nc,'cubic');

figure('Name','Original and the Reconstructed signal','NumberTitle','off')
subplot 311, plot(t,func_1);title('Plotting original signal');
subplot 312, stem(ns,xs);title('Graph of discrete signal');
subplot 313; plot(nc,xc);title('Cubic spline reconstruction')
