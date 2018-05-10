function [z0,z1] = box_muller()
u1=unifrnd(0,1,1,1);
u2=unifrnd(0,1,1,1);
z0=sqrt(-2*log(u1))*sin(2*pi*u2);
z1=sqrt(-2*log(u1))*cos(2*pi*u2);