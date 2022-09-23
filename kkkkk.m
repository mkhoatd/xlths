close all;

M=5;
[x,Fs]=audioread('ahihi.m4a');
y=zeros(1,length(x)/M);
n=1:length(y);

%sound(x,Fs)
for i=1:length(y)
    y(i)=x(i*M);
end;
subplot(2,1,1);
plot(n,y);
subplot(2,1,2)
plot(n,x(1:length(n)));

    
    
   
    
    
    
  
    
