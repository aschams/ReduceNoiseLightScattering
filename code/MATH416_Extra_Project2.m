FRAG1_Data = '08-17-2016 SF FRAG-1.xlsx';
PA_Data = '08-18-2016 SF P aeruginosa.xlsx';

time = xlsread(PA_Data,'A55:A1078');
PA_ddH2O_2 = xlsread(PA_Data, 'D55:D1078');
PA_OneEighth_2 = xlsread(PA_Data,'J55:J1078');
PA_OneFourth_2 = xlsread(PA_Data,'P55:P1078');
PA_ThreeFourths_2 = xlsread(PA_Data,'AH55:AH1078');
FRAG1_ddH2O_2 = xlsread(FRAG1_Data, 'D55:D1078');
FRAG1_OneEighth_2 = xlsread(FRAG1_Data,'J55:J1078');
FRAG1_OneFourth_2 = xlsread(FRAG1_Data, 'P55:P1078');
FRAG1_ThreeFourths_2 = xlsread(FRAG1_Data,'AH55:AH1078');

[PA_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(PA_ddH2O_2, 10);
%% 
hold on; plot(time,PA_ddH2O_2)
%plot(Time_var,PA_ddH2O_DHT9)
plot(time,PA_ddH2O_DHT6)
plot(0.041,PA_ddH2O_2(30),'ko')


%% 

PA_ddH2O_FullDHT2 = FullDHT(PA_ddH2O_2,Matrices,10);


figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{4})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 4')

figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{5})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 5')

figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{6})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 6')

figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{7})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 7')


figure
hold on;
plot(time,PA_ddH2O_2)
plot(time,PA_ddH2O_FullDHT2{10})
plot(0.041,PA_ddH2O_2(30),'ko')
title('PA ddH2O DHT 10')
%% 

PA_OneFourth_FullDHT2 = FullDHT(PA_OneFourth_2,Matrices,10);

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{3})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT3')

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{4})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT4')

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{5})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT5')

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{6})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT6')

figure
hold on;
plot(time,PA_OneFourth_2)
plot(time,PA_OneFourth_FullDHT2{10})
plot(0.0505,PA_OneFourth_2(49),'ko')
title('PA One Fourth DHT 10')



%% 

PA_ThreeFourths_FullDHT2 = FullDHT(PA_ThreeFourths_2,Matrices,10);

hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{3})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT 3')

figure
hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{4})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT4')

figure
hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{5})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT5')

figure
hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{6})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT6')

figure
hold on;
plot(time,PA_ThreeFourths_2)
plot(time,PA_ThreeFourths_FullDHT2{10})
plot(0.046,PA_ThreeFourths_2(40),'ko')
title('PA ThreeFourths DHT6')

%% 

figure
FRAG1_ddH2O_FullDHT2 = FullDHT(FRAG1_ddH2O_2,Matrices,10);
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{3})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT3')

figure
FRAG1_ddH2O_FullDHT2 = FullDHT(FRAG1_ddH2O_2,Matrices,10);
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{4})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT4')

figure
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{5})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT5')

figure
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{6})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT6')

figure
hold on;
plot(time,FRAG1_ddH2O_2)
plot(time,FRAG1_ddH2O_FullDHT2{10})
plot(0.052,FRAG1_ddH2O_2(52),'ko')
title('FRAG1 ddH2O DHT 10')

%% 
FRAG1_OneEighth_FullDHT2 = FullDHT(FRAG1_OneEighth_2,Matrices,10);

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{10})
plot(0.0675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT 10')

%% 
FRAG1_OneFourth_FullDHT2 = FullDHT(FRAG1_OneFourth_2,Matrices,10);

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{3})
plot(0.675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT3')

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{4})
plot(0.0675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT4')

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{5})
plot(0.0675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT5')

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{6})
plot(0.0675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT6')

figure
hold on;
plot(time,FRAG1_OneFourth_2)
plot(time,FRAG1_OneFourth_FullDHT2{10})
plot(0.0675,FRAG1_OneFourth_2(83),'ko')
title('FRAG1 One Fourth DHT 10')

%% 

FRAG1_ThreeFourths_FullDHT2 = FullDHT(FRAG1_ThreeFourths_2,Matrices,10);



figure
hold on;
plot(time,FRAG1_ThreeFourths_2)
plot(time,FRAG1_ThreeFourths_FullDHT2{3})
plot(0.035,FRAG1_ThreeFourths_2(18),'ko')
title('FRAG1 ThreeFourths DHT3')

figure
hold on;
plot(time,FRAG1_ThreeFourths_2)
plot(time,FRAG1_ThreeFourths_FullDHT2{4})
plot(0.035,FRAG1_ThreeFourths_2(18),'ko')
title('FRAG1 ThreeFourths DHT4')

figure
hold on;
plot(time,FRAG1_ThreeFourths_2)
plot(time,FRAG1_ThreeFourths_FullDHT2{5})
plot(0.035,FRAG1_ThreeFourths_2(18),'ko')
title('FRAG1 ThreeFourths DHT5')

figure
hold on;
plot(time,FRAG1_ThreeFourths_2)
plot(time,FRAG1_ThreeFourths_FullDHT2{6})
plot(0.035,FRAG1_ThreeFourths_2(18),'ko')
title('FRAG1 ThreeFourths DHT6')

figure
hold on;
plot(time,FRAG1_ThreeFourths_2)
plot(time,FRAG1_ThreeFourths_FullDHT2{10})
plot(0.035,FRAG1_ThreeFourths_2(18),'ko')
title('FRAG1 ThreeFourths DHT 10')
