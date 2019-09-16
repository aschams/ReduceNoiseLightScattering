FRAG1_Data = '08-17-2016 SF FRAG-1.xlsx';
PA_Data = '08-18-2016 SF P aeruginosa.xlsx';

time = xlsread(PA_Data,'A55:A1078');
PA_ddH2O_2 = xlsread(PA_Data, 'D55:D1078');
PA_OneFourth_2 = xlsread(PA_Data,'P55:P1078');
PA_ThreeFourths_2 = xlsread(PA_Data,'AH55:AH1078');
FRAG1_ddH2O_2 = xlsread(FRAG1_Data, 'D55:D1078');
FRAG1_OneFourth_2 = xlsread(FRAG1_Data, 'P55:P1078');
FRAG1_ThreeFourths_2 = xlsread(FRAG1_Data,'AH55:AH1078');

[PA_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(PA_ddH2O_2, 10);
%% 


PA_ddH2O_FullDHT2 = FullDHT(PA_ddH2O_2,Matrices,10);
figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{10})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 10')


Init = [0 .5 0 .5 .02];
ddH2O = [time PA_ddH2O_2];
[ddH2OFit,ddH2OTau]= Anishkin_fit(ddH2O,0.04,Init);
%% 

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{10})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT 10')



figure
hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{10})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT6')



figure
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{10})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT 10')
