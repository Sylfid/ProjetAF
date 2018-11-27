function [] = Question1_2()
N=15;
Fo=7;
Fe=32;
fo = Fo/Fe;
a= 1/Fe;
lambda = 0:0.1:20;
Sn=0*lambda;
for i=-N:(N-1)
    Sn=Sn+exp(2*%pi*%i*i*(fo-lambda/Fe));
end
Sn= a * Sn;
//plot(lambda, Sn);
plot(lambda, real(Sn),'r');
plot(lambda,imag(Sn),'g');
endfunction

function [] = Question1_4()
Fe = 32;
N=15;
a = 1/Fe;
Fo=7;
fo = Fe/Fo;
n = 0:(2*N-1);
X = exp(2*%i*%pi*Fo*(n-N)*a);
k=0:(2*N-1);
SN= ((-1).^k).*fft(X)*a;
lambda = k / ( 2*N*a);
plot(n, real(SN), 'r');
plot(n, imag(SN), 'b');
endfunction

Question1_4();
