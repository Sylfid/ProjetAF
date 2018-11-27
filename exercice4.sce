//exercice 4
n=-7:7;
h_n=sinc(n*%pi/2)/2;
lambda=-10:0.2:10
function [x] = Question4_1(lambda)
    x=sum(2*sinc(n*%pi/2)/2*cos(2*%pi*n*lambda));
endfunction
y=Question4_1(lambda);
