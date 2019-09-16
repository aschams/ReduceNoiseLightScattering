SF_Data = 'FRAG1 Traces.xlsx';
SF_Data2 = '08-26-2016 SF FRAG1 T2.xlsx';

time = xlsread(SF_Data2,'A55:A1078');
h2O000 = xlsread(SF_Data,'C55:C1078');
h2O001 = xlsread(SF_Data,'G55:G1078');
h2O002 = xlsread(SF_Data,'K55:K1078');
h2O003 = xlsread(SF_Data,'O55:O1078');
h2O004 = xlsread(SF_Data,'S55:S1078');

FRAG1_ddH2O = xlsread(SF_Data2, 'C55:C1078');

norm(FRAG1_ddH2O - h2O000,2)
norm(FRAG1_ddH2O - h2O001,2)
norm(FRAG1_ddH2O - h2O002,2)
norm(FRAG1_ddH2O - h2O003,2)
norm(FRAG1_ddH2O - h2O004,2)