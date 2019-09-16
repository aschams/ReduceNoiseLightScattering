FRAG1_Data = '08-17-2016 SF FRAG-1.xlsx';
PA_Data = '08-18-2016 SF P aeruginosa.xlsx';

time = xlsread(PA_Data,'A30:A1053');
PA_ddH2O = xlsread(PA_Data, 'D30:D1053');
PA_OneFourth = xlsread(PA_Data,'P30:P1053');
PA_ThreeFourths = xlsread(PA_Data,'AH30:AH1053');
FRAG1_ddH2O = xlsread(FRAG1_Data, 'D30:D1053');
FRAG1_OneFourth = xlsread(FRAG1_Data, 'P30:P1053');
FRAG1_ThreeFourths = xlsread(FRAG1_Data,'AH30:AH1053');
%% 

[PA_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(PA_ddH2O, 10);
PA_ddH2O_InvHT10 = InverseHaarTransform(PA_ddH2O_DHT10,Matrices,10);

%Checking to make sure these functions are working.
PA_ddH2O_resid = PA_ddH2O- PA_ddH2O_InvHT10;
sum(abs(PA_ddH2O_resid(:)) < 0.001);

% PA_ddH2O_DHT5 = DHTnoMat(PA_ddH2O,Matrices,5);
% PA_ddH2O_DHT4 = DHTnoMat(PA_ddH2O,Matrices,4);
% PA_ddH2O_DHT2 = DHTnoMat(PA_ddH2O,Matrices,2);
% PA_ddH2O_DHT8 = DHTnoMat(PA_ddH2O,Matrices,8);
% PA_ddH2O_DHT9 = DHTnoMat(PA_ddH2O,Matrices,9);
% PA_ddH2O_DHT6 = DHTnoMat(PA_ddH2O,Matrices,6);
PA_ddH2O_FullDHT = FullDHT(PA_ddH2O,Matrices,10); 
% Yields Multi-Dimensional Array containing every iteration of DHT on the
% vector.

[PA_ddH2O_DHT5_filt005,trunc_PA_ddH2O_DHT5] = HighPassFilter(PA_ddH2O_DHT5,.005);
plot(time,PA_ddH2O_DHT5_filt001, time,PA_ddH2O_DHT5);
legend('on')


%% 
hold on; plot(time,PA_ddH2O)
%plot(Time_var,PA_ddH2O_DHT9)
plot(time,PA_ddH2O_DHT6)
plot(0.041,PA_ddH2O(55),'ko')


%% 

PA_ddH2O_FullDHT = FullDHT(PA_ddH2O,Matrices,10);


figure
hold on;
plot(time,PA_ddH2O)
plot(time,PA_ddH2O_FullDHT{4})
plot(0.041,PA_ddH2O(55),'ko')
title('PA ddH2O DHT 4')

figure
hold on;
plot(time,PA_ddH2O)
plot(time,PA_ddH2O_FullDHT{5})
plot(0.041,PA_ddH2O(55),'ko')
title('PA ddH2O DHT 5')

figure
hold on;
plot(time,PA_ddH2O)
plot(time,PA_ddH2O_FullDHT{6})
plot(0.041,PA_ddH2O(55),'ko')
title('PA ddH2O DHT 6')

figure
hold on;
plot(time,PA_ddH2O)
plot(time,PA_ddH2O_FullDHT{7})
plot(0.041,PA_ddH2O(55),'ko')
title('PA ddH2O DHT 7')

%% 

PA_ThreeFourths_FullDHT = FullDHT(PA_ThreeFourths,Matrices,10);

hold on;
plot(time,PA_ThreeFourths)
plot(time,PA_ThreeFourths_FullDHT{3})
plot(0.046,PA_ThreeFourths(65),'ko')
title('PA ThreeFourths DHT 3')

figure
hold on;
plot(time,PA_ThreeFourths)
plot(time,PA_ThreeFourths_FullDHT{4})
plot(0.046,PA_ThreeFourths(65),'ko')
title('PA ThreeFourths DHT4')

figure
hold on;
plot(time,PA_ThreeFourths)
plot(time,PA_ThreeFourths_FullDHT{5})
plot(0.046,PA_ThreeFourths(65),'ko')
title('PA ThreeFourths DHT5')

figure
hold on;
plot(time,PA_ThreeFourths)
plot(time,PA_ThreeFourths_FullDHT{6})
plot(0.046,PA_ThreeFourths(65),'ko')
title('PA ThreeFourths DHT6')


%% 

figure
FRAG1_ddH2O_FullDHT = FullDHT(FRAG1_ddH2O,Matrices,10);
hold on;
plot(time,FRAG1_ddH2O)
plot(time,FRAG1_ddH2O_FullDHT{3})
plot(0.052,FRAG1_ddH2O(77),'ko')
title('FRAG1 ddH2O DHT3')

figure
FRAG1_ddH2O_FullDHT = FullDHT(FRAG1_ddH2O,Matrices,10);
hold on;
plot(time,FRAG1_ddH2O)
plot(time,FRAG1_ddH2O_FullDHT{4})
plot(0.052,FRAG1_ddH2O(77),'ko')
title('FRAG1 ddH2O DHT4')

figure
hold on;
plot(time,FRAG1_ddH2O)
plot(time,FRAG1_ddH2O_FullDHT{5})
plot(0.052,FRAG1_ddH2O(77),'ko')
title('FRAG1 ddH2O DHT5')

figure
hold on;
plot(time,FRAG1_ddH2O)
plot(time,FRAG1_ddH2O_FullDHT{6})
plot(0.052,FRAG1_ddH2O(77),'ko')
title('FRAG1 ddH2O DHT6')

figure
hold on;
plot(time,FRAG1_ddH2O)
plot(time,FRAG1_ddH2O_FullDHT{10})
plot(0.052,FRAG1_ddH2O(77),'ko')
title('FRAG1 ddH2O DHT 10')

%% 

FRAG1_ThreeFourths_FullDHT = FullDHT(FRAG1_ThreeFourths,Matrices,10);

figure
hold on;
plot(time,FRAG1_ThreeFourths)
plot(time,FRAG1_ThreeFourths_FullDHT{3})
plot(0.035,FRAG1_ThreeFourths(43),'ko')
title('FRAG1 ThreeFourths DHT3')

figure
hold on;
plot(time,FRAG1_ThreeFourths)
plot(time,FRAG1_ThreeFourths_FullDHT{4})
plot(0.035,FRAG1_ThreeFourths(43),'ko')
title('FRAG1 ThreeFourths DHT4')

figure
hold on;
plot(time,FRAG1_ThreeFourths)
plot(time,FRAG1_ThreeFourths_FullDHT{5})
plot(0.035,FRAG1_ThreeFourths(43),'ko')
title('FRAG1 ThreeFourths DHT5')

figure
hold on;
plot(time,FRAG1_ThreeFourths)
plot(time,FRAG1_ThreeFourths_FullDHT{6})
plot(0.035,FRAG1_ThreeFourths(43),'ko')
title('FRAG1 ThreeFourths DHT6')

figure
hold on;
plot(time,FRAG1_ThreeFourths)
plot(time,FRAG1_ThreeFourths_FullDHT{10})
plot(0.035,FRAG1_ThreeFourths(43),'ko')
title('FRAG1 ThreeFourths DHT 10')
