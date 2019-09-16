SF_Data = '08-18-2016 SF P aeruginosa.xlsx';

ddH2O_X_Range = xlsread(SF_Data,'A67:A1002');
OneEighth_X_Range = xlsread(SF_Data,'A90:A1002');
OneFourth_X_Range = xlsread(SF_Data,'A100:A1002');
ThreeEighths_X_Range = xlsread(SF_Data,'A120:A1002');
OneHalf_X_Range = xlsread(SF_Data,'A120:A1002');
ThreeFourths_X_Range = xlsread(SF_Data,'A280:A1002');

ddH2O_Range = xlsread(SF_Data,'D67:D1002');
OneEighth_Range = xlsread(SF_Data,'J90:J1002');
OneFourth_Range = xlsread(SF_Data,'P100:P1002');
ThreeEighths_Range = xlsread(SF_Data,'V120:V1002');
OneHalf_Range = xlsread(SF_Data,'AB120:AB1002'); 
ThreeFourths_Range = xlsread(SF_Data,'AH280:AH1002'); 

%% Concatinate Data into single matrices
ddH2O = [ddH2O_X_Range, ddH2O_Range];
OneEighth = [OneEighth_X_Range, OneEighth_Range];
OneFourth = [OneFourth_X_Range, OneFourth_Range];
ThreeEighths = [ThreeEighths_X_Range, ThreeEighths_Range];
OneHalf = [OneHalf_X_Range, OneHalf_Range];
ThreeFourths = [ThreeFourths_X_Range, ThreeFourths_Range];

%% Build matrix of minimum slopes

MinSlope(1)  = .0425;
MinSlope(2)  = .0445;
MinSlope(3)  = .043;
MinSlope(4)  = 0.057; % I put this in by hand because the Excel command 
                      % returns an incorrect global minimum.
MinSlope(5)  = .07 ;  % xlsread(SF_Data,'Sheet2','AA2');
MinSlope(6)  = .0445; % xlsread(SF_Data,'Sheet2','AG2');

%% Perform the Anishkin Fit
Init = [0 .5 0 .5 .02];
[ddH2OFit,ddH2OTau]= Anishkin_fit(ddH2O,MinSlope(1),Init);
[OneEighthFit, OneEighthTau] = Anishkin_fit(OneEighth,MinSlope(2),Init);
[OneFourthFit, OneFourthTau] = Anishkin_fit(OneFourth,MinSlope(3), Init);
[ThreeEighthsFit,ThreeEighthsTau]=Anishkin_fit(ThreeEighths,MinSlope(4),Init);
[OneHalfFit,OneHalfTau] = Anishkin_fit(OneHalf,MinSlope(5), Init);
[ThreeFourthsFit, ThreeFourthsTau] = Anishkin_fit(ThreeFourths,MinSlope(6), Init);

