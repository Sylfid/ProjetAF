f0=0.2;
Fe=32;
step=0.1;
N=15;
lambda=-10:step:10;
Sn_lambda = (1/Fe)*(exp(-30*%i*%pi*(f0-lambda/Fe))-exp(30*%i*%pi*(f0-lambda/Fe)))/(1-exp(2*%i*%pi*(f0-lambda/Fe)));
plot(lambda, Sn_lambda, "r+");
