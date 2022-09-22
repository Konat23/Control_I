clc
clear
load dryer2
tf(tf1.Numerator,tf1.Denominator)
ts=0.08
G=tf(tf1.Numerator,tf1.Denominator,ts);
rlocus(G)
nyquist(G)

[A,B,C,D]=tf2ss(tf1.Numerator,tf1.Denominator)

