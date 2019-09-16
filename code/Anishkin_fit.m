function[TheFit, Values] = Anishkin_fit(data,initPoint,guess)
%Standard Anishkin Fit Equation. All parameters, no limits on values.
Anish_fit = fittype('I0 +S*(mi + mp *exp((t0 - t)/tau))^2',... 
'problem',{'t0'},'dependent',{'y'},'independent',{'t'},...
'coefficients',{ 'I0','S','mi','mp','tau'});
[TheFit,gof] = fit(data(:,1),data(:,2),Anish_fit,'StartPoint', guess,'problem',{initPoint});

% % Extract Tau value
Coeff = confint(TheFit, 0.95);
I0val = (Coeff(1,1) + Coeff(2,1)) / 2;
I0Err = (Coeff(2,1) - Coeff(1,1)) / 2;

Sval = (Coeff(1,2) + Coeff(2,2)) / 2;
SErr = (Coeff(2,2) - Coeff(1,2)) / 2;

mival = (Coeff(1,3) + Coeff(2,3)) / 2;
miErr = (Coeff(2,3) - Coeff(1,3)) / 2;

mpval = (Coeff(1,4) + Coeff(2,4)) / 2;
mpErr = (Coeff(2,4) - Coeff(1,4)) / 2;

Tau = (Coeff(1,5) + Coeff(2,5)) / 2;
TauErr = (Coeff(2,5) - Coeff(1,5)) / 2;

Rsquared = getfield(gof, 'rsquare');
AdjRsq = getfield(gof,'adjrsquare');

Values = [I0val I0Err; Sval SErr; mival miErr; mpval mpErr;Tau TauErr ; Rsquared AdjRsq];


