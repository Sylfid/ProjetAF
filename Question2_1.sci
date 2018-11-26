function [] = Question2_1()
N=256
t1=1:128;
t2=1:64;
t3=1:(N-64-128);
f1=sin(2*%pi*0.2*t1);
f2=sin(2*%pi*0.1*t2);
f3=0*t3;
f=cat(2,f1,f2,f3);
//plot(abs(fft(f)));
plot((1:N)/N-0.5,abs(fftshift(fft(f))));
endfunction


function [] = Question2_3()
N=512;
t1=1:128;
t2=1:64;
t3=1:(N-64-128);
f1=sin(2*%pi*0.1*t1);
f2=sin(2*%pi*0.2*t2);
f3=0*t3;
f=cat(2,f1,f2,f3);
//plot(abs(fft(f)));
plot((1:N)/N-0.5,abs(fftshift(fft(f))));
endfunction

function [] = Question2_4()
    N=256;
    Q=8;
    sousTaille = floor((128+64)*2/(1+Q));
    t1=1:128;
    t2=1:64;
    t3=1:(N-64-128);
    f1=sin(2*%pi*0.1*t1);
    f2=sin(2*%pi*0.2*t2);
    f3=0*t3;
    f=cat(2,f1,f2,f3);
    F=zeros(Q,256);
    for i = 1:Q
        for j = 1:sousTaille
            F(i,j)=f(1,j+(i-1)*floor(sousTaille/2));
        end
    end
    Fresult = [];
    for i=1:Q
        Fresult = cat(1,Fresult,fftshift(abs(fft(F(i,:)))));
    end
    x = (0:255) / 256-0.5;
    y = 1:Q;
    mesh(x,y,Fresult);
endfunction


Question2_1();
