function [] = Question3_3()

t = [0:39];
a=1/20;
f = sin(2 * %pi * t * a);
d = zeros(t);
d(1,1)=1/4;
d(1,2)=1/4;
d(1,3)=1/4;
d(1,4)=1/4;
resultat = ifft(fft(f) .* fft(d));
dfft=fft(d);
fonctionDebut = resultat ./ fft(d);
epsilon=0.94;
for i=1:40
    if abs(dfft(1,i))<epsilon then
        dfft(1,i)=epsilon;
    else
    end
end
fonctionDebut = ifft(fft(resultat)./dfft);
plot(resultat);
plot(f,'r');

endfunction

Question3_3();
