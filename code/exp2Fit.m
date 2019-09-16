function [Values] = exp2Fit(data)
    [exp2fit,gof,res] = fit(data(:,1),data(:,2),'exp2');
    Coeff = confint(exp2fit,0.95);
    a = (Coeff(1,1)+ Coeff(2,1))/2;
    b = (Coeff(1,2)+ Coeff(2,2))/2;
    c = (Coeff(1,3)+ Coeff(2,3))/2;
    d = (Coeff(1,4)+ Coeff(2,4))/2;
    
    da = (Coeff(2,1) - Coeff(1,1))/2;
    db = (Coeff(2,2) - Coeff(1,2))/2;
    dc = (Coeff(2,3) - Coeff(1,3))/2;
    dd = (Coeff(2,4) - Coeff(1,4))/2;
    
    Rsquared = getfield(gof,'rsquare');
    adjRsquared = getfield(gof,'adjrsquare');
    Values = [a da ; b db ; c dc ; d dd ; Rsquared adjRsquared];
%     figure
%     plot(data(:,1),res.residuals,'.')
%     xlabel('Time(s)')
%     ylabel('Residual')
    norm(res.residuals,2)
    norm(res.residuals,1)
    
    