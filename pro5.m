clear; close all;
wfile = 'ghiam.m4a';
[x,fs] = audioread(wfile); %sound(x, fs);
%Compress 2.
for i = 1:(length(x)/2)
    xc2(i) = x(2*i);
end;
%sound(xc2, fs);
%Expand 2.
%sound(xe2, fs);
xe(1) = x(1);
xe(2) = x(4);
for i = 2:(length(x))
    xe2(2*i) = x(i);
    xe2(2*i-1) = (x(i-1)+x(i))/2;
end;
%Compress 4.
for i = 1:(length(x)/4)
    xc4(i) = x(4*i);
end;
%sound(xc4, fs);
%Compress 8.
for i = 1:(length(x)/8)
    xc8(i) = x(8*i);
end; 
%sound(xc8, fs);

%ham khoi phuc.
t = (1:length(x))/fs;
tc2 = (1:length(xc2))/fs;
tc4 = (1:length(xc4))/fs;
tc8 = (1:length(xc8))/fs;
te2 = (1:length(xe2))/fs;

%do thi khoi phuc.
figure(1);
subplot(3,1,1); plot(t, x); xlabel('t'); ylabel('x(n)');
subplot(3,1,2); plot(tc2, xc2); xlabel('t'); ylabel('x(2n)');
subplot(3,1,3); plot(te2, xe2); xlabel('t'); ylabel('x(n/2)');

figure(2)
subplot(4,1,1); plot(t, x); xlabel('t'); ylabel('x(n)');
subplot(4,1,2); plot(tc2, xc2); xlabel('t'); ylabel('x(2n)');
subplot(4,1,3); plot(tc4, xc4); xlabel('t'); ylabel('x(4n)');
subplot(4,1,4); plot(tc8, xc8); xlabel('t'); ylabel('x(8n)');


