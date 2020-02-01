x=input('Supply the input signal: ');
h=input('Supply the System response: ');
L=length(x);
M=length(h);
x1=[zeros(1,M-1),x,zeros(1,M-1)];
conv_matrix=[];
for i=1: L+M-1
    seq=x1(1,i:i+M-1);
    seq1=fliplr(seq);
    conv_matrix=[conv_matrix;seq1];
end
y=conv_matrix*h'
y1=conv(x,h)

subplot(221)
stem(x)
xlabel('n'); ylabel('x(n)');
grid on
title('INPUT SIGNAL');

subplot(223)
stem(y)
xlabel('n'); ylabel('y(n)');
grid on
title('OUTPUT SIGNAL');

subplot(222)
stem(h)
xlabel('n'); ylabel('h(n)');
grid on
title('SYSTEM RESPONSE');

subplot(224)
stem(y1)
xlabel('n'); ylabel('y1(n)');
grid on
title('OUTPUT SIGNAL USING MATLAB FUNCTION');