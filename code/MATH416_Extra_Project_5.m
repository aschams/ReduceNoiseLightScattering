FRAG1_Data = '08-26-2016 SF FRAG1 T1.xlsx';

time = xlsread(FRAG1_Data,'A55:A1078');
FRAG1_ddH2O = xlsread(FRAG1_Data, 'D55:D1078');

[FRAG1_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(FRAG1_ddH2O, 10);

Init = [0 .5 0 .5 .02];
%% N = 10 Threshold = 0.001
n = 10;
FRAG1_ddH2O_FullDHT2 = FullDHT(FRAG1_ddH2O,Matrices,10);
[dimension, col] = size(FRAG1_ddH2O_FullDHT2{n});
threshold1 = .001;
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) <.001)
filtered001 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    if abs(FRAG1_ddH2O_FullDHT2{10}(p)) < threshold1
            filtered001(p) = 0;
    end
end

filterInv1 = InverseHaarTransform(filtered001,Matrices,n);
filtInv1Resid = FRAG1_ddH2O - filterInv1;
graph1 = plot(time,filterInv1,time,FRAG1_ddH2O);
graph1(1).LineWidth = 2;
figure
plot(time,filtInv1Resid)


filterInv1Pair = [time filterInv1];
[filterInv1AAFit,filterInv1AATau] = Anishkin_fit(filterInv1Pair,.0545,Init);
filterInv1_2ExpFit = exp2Fit(filterInv1Pair);
%% N = 10 Threshold = 0.002
n = 10;
threshold2 = .002
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold2)
n = 10
filtered002 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold2
            filtered002(p) = 0;
        end
    end
end

filterInv2 = InverseHaarTransform(filtered002,Matrices,n);
filtInv2Resid = FRAG1_ddH2O - filterInv2;
figure
graph2 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph2(1).LineWidth = 2;
figure
plot(time,filtInv2Resid)
filterInv2Pair = [time filterInv2];
[filterInv2AAFit,filterInv2AATau] = Anishkin_fit(filterInv2Pair,.0545,Init);
filterInv2_2ExpFit = exp2Fit(filterInv2Pair);
%% N = 10 Threshold = 0.004
n = 10;

threshold4 = .004
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered004 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered004(p) = 0;
        end
    end
end

filterInv4 = InverseHaarTransform(filtered004,Matrices,n);
filtInv1_4_Resid = FRAG1_ddH2O - filterInv4;
figure
graph3 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph3(1).LineWidth = 2;
figure
plot(time,filtInv1_4_Resid)
filterInv4Pair = [time filterInv4];
[filterInv4AAFit,filterInv4AATau] = Anishkin_fit(filterInv4Pair,.0545,Init);
filterInv4_2ExpFit = exp2Fit(filterInv4Pair);
%% N = 5 Threshold = 0.001
n = 5;
threshold1 = .001;
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) <.001)
filtered_5_001 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold1
            filtered_5_001(p) = 0;
    end
end

filterInv_5_1 = InverseHaarTransform(filtered_5_001,Matrices,n);
filtInv_5_1Resid = FRAG1_ddH2O - filterInv_5_1;
figure
graph4 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph4(1).LineWidth = 2;
figure
plot(time,filtInv_5_1Resid)
filterInv5_1_Pair = [time filterInv_5_1];
[filterInv5_1_AAFit,filterInv5_1_AATau] = Anishkin_fit(filterInv5_1_Pair,.0545,Init);
filterInv5_1_2ExpFit = exp2Fit(filterInv5_1_Pair);
%% N = 5 Threshold = 0.002
n = 5;
threshold2 = .002
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold2)
filtered_5_002 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold2
            filtered_5_002(p) = 0;
        end
    end
end

filterInv_5_2 = InverseHaarTransform(filtered_5_002,Matrices,n);
filtInv_5_2Resid = FRAG1_ddH2O - filterInv_5_2;
figure
graph5 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph5(1).LineWidth = 2;
figure
plot(time,filtInv_5_2Resid)
filterInv5_2_Pair = [time filterInv_5_2];
[filterInv5_2_AAFit,filterInv5_2_AATau] = Anishkin_fit(filterInv5_2_Pair,.0545,Init);
filterInv5_2_2ExpFit = exp2Fit(filterInv5_2_Pair);
%% N = 5 Threshold = 0.004
n = 5;
threshold4 = .004
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered_5_004 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered_5_004(p) = 0;
        end
    end
end

filterInv5_4 = InverseHaarTransform(filtered_5_004,Matrices,n);
filtInv1_4_Resid = FRAG1_ddH2O - filterInv5_4;
figure
graph6 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph6(1).LineWidth = 2;
figure
plot(time,filtInv1_4_Resid)

filterInv5_4_Pair = [time filterInv5_4];
[filterInv5_4_AAFit,filterInv5_4_AATau] = Anishkin_fit(filterInv5_4_Pair,.0545,Init);
filterInv5_4_2ExpFit = exp2Fit(filterInv5_4_Pair);

%% N = 1 Threshold = 0.001
n = 1;
threshold1 = .001;
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) <.001)
filtered_3_001 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold1
            filtered_3_001(p) = 0;
    end
end

filterInv1_1 = InverseHaarTransform(filtered_3_001,Matrices,n);
filtInv1_1Resid = FRAG1_ddH2O - filterInv1_1;
figure
graph7 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph7(1).LineWidth = 2;
figure
plot(time,filtInv1_1Resid)
filterInv1_1_Pair = [time filterInv1_1];
[filterInv1_1_AAFit,filterInv1_1_AATau] = Anishkin_fit(filterInv1_1_Pair,.0545,Init);
filterInv1_1_2ExpFit = exp2Fit(filterInv1_1_Pair);
%% N = 1 Threshold = 0.002
n = 1;
threshold2 = .002
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold2)
filtered_3_002 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold2
            filtered_3_002(p) = 0;
        end
    end
end

filterInv_1_2 = InverseHaarTransform(filtered_3_002,Matrices,n);
filtInv_1_2Resid = FRAG1_ddH2O - filterInv_1_2;
figure
graph8 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph8(1).LineWidth = 2;
figure
plot(time,filtInv_1_2Resid)
filterInv1_2_Pair = [time filterInv_1_2];
[filterInv1_2_AAFit,filterInv1_2_AATau] = Anishkin_fit(filterInv1_2_Pair,.0545,Init);
filterInv1_2_2ExpFit = exp2Fit(filterInv1_2_Pair);
%% N = 1 Threshold = 0.004
n = 1;
threshold4 = .004
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered_3_004 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered_3_004(p) = 0;
        end
    end
end

filterInv1_4 = InverseHaarTransform(filtered_3_004,Matrices,n);
filtInv1_4_Resid = FRAG1_ddH2O - filterInv1_4;
figure
graph9 = plot(time,filterInv2,time,FRAG1_ddH2O)
graph9(1).LineWidth = 2;
figure
plot(time,filtInv1_4_Resid)

filterInv1_4_Pair = [time filterInv1_4];
[filterInv1_4_AAFit,filterInv1_4_AATau] = Anishkin_fit(filterInv1_4_Pair,.0545,Init);
filterInv1_4_2ExpFit = exp2Fit(filterInv1_4_Pair);

%% Write to Excel
dest = 'C:\Users\sukharevlab\Documents\Schams\Stopped Flow\All Data\Anishkin Fit Files\Tau\08-26-16 FRAG1 T1 Constants Haar Transform.xlsx';
% 
% xlswrite(dest,{'Tau/Uncertainty'},'Sheet1','A3')
% xlswrite(dest,{'R Squared/Adj'},'Sheet1','A4')
% 
% xlswrite(dest,{'Three Eighths'},'Sheet1','K2')
% xlswrite(dest,ThreeEighthsTau,'K3:L4')

xlswrite(dest,{'N = 10'}, 'Sheet1','J2')
xlswrite(dest,{'N = 5'},'Sheet1','G2')
xlswrite(dest,{'N = 1'}, 'Sheet1','D2')
xlswrite(dest,{'Threshold = 0.001'},'Sheet1','A4')
xlswrite(dest,{'Threshold = 0.002'},'Sheet1', 'A7')
xlswrite(dest,{'Threshold = 0.004'},'Sheet1', 'A10')

xlswrite(dest,filterInv1AATau,'J4:K5')
xlswrite(dest,filterInv2AATau,'J7:K8')
xlswrite(dest,filterInv4AATau,'J10:K11')

xlswrite(dest,filterInv5_1_AATau,'G4:H5')
xlswrite(dest,filterInv5_2_AATau,'G7:H8')
xlswrite(dest,filterInv5_4_AATau,'G10:H11')

xlswrite(dest,filterInv1_1_AATau,'D4:E5')
xlswrite(dest,filterInv1_2_AATau,'D7:E8')
xlswrite(dest,filterInv1_4_AATau,'D10:E11')


xlswrite(dest,{'N = 10'}, 'Sheet2','J2')
xlswrite(dest,{'N = 5'},'Sheet2','G2')
xlswrite(dest,{'N = 1'}, 'Sheet2','D2')
xlswrite(dest,{'Threshold = 0.001'},'Sheet2','A4')
xlswrite(dest,{'Threshold = 0.002'},'Sheet2', 'A10')
xlswrite(dest,{'Threshold = 0.004'},'Sheet2', 'A16')


xlswrite(dest,filterInv1_2ExpFit,'Sheet2','J4:K8')
xlswrite(dest,filterInv2_2ExpFit,'Sheet2','J10:K14')
xlswrite(dest,filterInv4_2ExpFit,'Sheet2','J16:K20')

xlswrite(dest,filterInv5_1_2ExpFit,'Sheet2','G4:H8')
xlswrite(dest,filterInv5_2_2ExpFit,'Sheet2','G10:H14')
xlswrite(dest,filterInv5_4_2ExpFit,'Sheet2','G16:H20')

xlswrite(dest,filterInv1_1_2ExpFit,'Sheet2','D4:E8')
xlswrite(dest,filterInv1_2_2ExpFit,'Sheet2','D10:E14')
xlswrite(dest,filterInv1_4_2ExpFit,'Sheet2','D16:E20')
