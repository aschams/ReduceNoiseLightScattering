FRAG1_Data = 'FRAG1 Traces.xlsx';

time = xlsread(FRAG1_Data,'A55:A1078');
FRAG1_ddH2O = xlsread(FRAG1_Data, 'C55:C1078');

[FRAG1_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(FRAG1_ddH2O, 10);

Init = [0 .5 .2 .5 .08];
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

filterInv1Pair = [time filterInv1];
[filterInv1AAFit,filterInv1AATau] = Anishkin_fit(filterInv1Pair,.0555,[-.3 .5 .2 .5 .04]);
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



filterInv2Pair = [time filterInv2];
[filterInv2AAFit,filterInv2AATau] = Anishkin_fit(filterInv2Pair,.0555,Init);
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

filterInv4Pair = [time filterInv4];
[filterInv4AAFit,filterInv4AATau] = Anishkin_fit(filterInv4Pair,.0555,[-.2 3 .03 .1 .02]);
filterInv4_2ExpFit = exp2Fit(filterInv4Pair);

%% N = 10 Threshold = 0.1
n = 10;

threshold4 = .1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered100 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered100(p) = 0;
        end
    end
end

filterInv100 = InverseHaarTransform(filtered100,Matrices,n);
filtInv1_100_Resid = FRAG1_ddH2O - filterInv100;

filterInv100Pair = [time filterInv100];
[filterInv100_AAFit,filterInv100_AATau] = Anishkin_fit(filterInv100Pair,.0555,[-.25 2.5 .05 .1 .03]);
filterInv100_2ExpFit = exp2Fit(filterInv100Pair);


%% N = 10 Threshold = 0.2
n = 10;

threshold4 = .2
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered200 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered200(p) = 0;
        end
    end
end

filterInv200 = InverseHaarTransform(filtered200,Matrices,n);
filtInv1_200_Resid = FRAG1_ddH2O - filterInv200;

filterInv200Pair = [time filterInv200];
[filterInv200_AAFit,filterInv200_AATau] = Anishkin_fit(filterInv200Pair,.0555,[-.25 2.5 .05 .1 .03]);
filterInv200_2ExpFit = exp2Fit(filterInv200Pair);

%% N = 10 Threshold = 1
n = 10;

threshold4 = 1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered1000 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered1000(p) = 0;
        end
    end
end

filterInv1000 = InverseHaarTransform(filtered1000,Matrices,n);
filtInv1_1000_Resid = FRAG1_ddH2O - filterInv1000;

filterInv1000Pair = [time filterInv1000];

filterInv1000_2ExpFit = exp2Fit(filterInv1000Pair);

%% N = 5 Threshold = 0.001
n = 5;
threshold1 = .001;
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) <.001)
filtered_5_01 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold1
            filtered_5_01(p) = 0;
    end
end

filterInv_5_1 = InverseHaarTransform(filtered_5_01,Matrices,n);
filtInv_5_1Resid = FRAG1_ddH2O - filterInv_5_1;

filterInv5_1_Pair = [time filterInv_5_1];
[filterInv5_1_AAFit,filterInv5_1_AATau] = Anishkin_fit(filterInv5_1_Pair,.0555,Init);
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

filterInv5_2_Pair = [time filterInv_5_2];
[filterInv5_2_AAFit,filterInv5_2_AATau] = Anishkin_fit(filterInv5_2_Pair,.0555,[-.2 .6 .14 .58 .05]);
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
filtInv5_4_Resid = FRAG1_ddH2O - filterInv5_4;


filterInv5_4_Pair = [time filterInv5_4];
[filterInv5_4_AAFit,filterInv5_4_AATau] = Anishkin_fit(filterInv5_4_Pair,.0555,[-.25 .1 .4 1 .06]);
filterInv5_4_2ExpFit = exp2Fit(filterInv5_4_Pair);

%% N = 5 Threshold = 0.1
n = 5;
threshold100 = .1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold100)
filtered_5_100 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold100
            filtered_5_100(p) = 0;
        end
    end
end
filterInv5_100 = InverseHaarTransform(filtered_5_100,Matrices,n);
filtInv5_100Resid = FRAG1_ddH2O - filterInv5_100;

filterInv5_100_Pair = [time filterInv5_100];
[filterInv5_100_AAFit,filterInv5_100_AATau] = Anishkin_fit(filterInv5_100_Pair,.0555,[-.3 .5 .2 .4 .05]);
filterInv5_100_2ExpFit = exp2Fit(filterInv5_100_Pair);

%% N = 5 Threshold = 0.2
n = 5;
threshold200 = .2
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold200)
filtered_5_200 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold200
            filtered_5_200(p) = 0;
        end
    end
end
filterInv5_200 = InverseHaarTransform(filtered_5_200,Matrices,n);
filtInv5_200Resid = FRAG1_ddH2O - filterInv5_200;

filterInv5_200_Pair = [time filterInv5_200];
[filterInv5_200_AAFit,filterInv5_200_AATau] = Anishkin_fit(filterInv5_200_Pair,.0555,[-.3 .5 .2 .4 .05]);
filterInv5_200_2ExpFit = exp2Fit(filterInv5_200_Pair);
%% N = 5 Threshold = 1
n = 5;

threshold4 = 1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered5_1000 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered5_1000(p) = 0;
        end
    end
end

filterInv5_1000 = InverseHaarTransform(filtered5_1000,Matrices,n);
filtInv1_5_1000_Resid = FRAG1_ddH2O - filterInv5_1000;

filterInv5_1000_Pair = [time filterInv5_1000];

filterInv5_1000_2ExpFit = exp2Fit(filterInv5_1000_Pair);

%% N = 1 Threshold = 0.001
n = 1;
threshold1 = .001;
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) <.001)
filtered_1_001 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold1
            filtered_1_001(p) = 0;
    end
end

filterInv1_1 = InverseHaarTransform(filtered_1_001,Matrices,n);
filtInv1_1Resid = FRAG1_ddH2O - filterInv1_1;

filterInv1_1_Pair = [time filterInv1_1];
[filterInv1_1_AAFit,filterInv1_1_AATau] = Anishkin_fit(filterInv1_1_Pair,.0555,[.3 .4 0.02 .1 .07]);
filterInv1_1_2ExpFit = exp2Fit(filterInv1_1_Pair);

%% N = 1 Threshold = 0.002
n = 1;
threshold2 = .002
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold2)
filtered_1_002 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold2
            filtered_1_002(p) = 0;
        end
    end
end
filterInv1_2 = InverseHaarTransform(filtered_1_002,Matrices,n);
filtInv1_2Resid = FRAG1_ddH2O - filterInv1_2;


filterInv1_2_Pair = [time filterInv1_2];
[filterInv1_2_AAFit,filterInv1_2_AATau] = Anishkin_fit(filterInv1_2_Pair,.0555,Init);
filterInv1_2_2ExpFit = exp2Fit(filterInv1_2_Pair);
%% N = 1 Threshold = 0.004
n = 1;
threshold4 = .004
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered_1_004 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered_1_004(p) = 0;
        end
    end
end
filterInv1_4 = InverseHaarTransform(filtered_1_004,Matrices,n);
filtInv1_4Resid = FRAG1_ddH2O - filterInv1_4;

filterInv1_4_Pair = [time filterInv1_4];
[filterInv1_4_AAFit,filterInv1_4_AATau] = Anishkin_fit(filterInv1_4_Pair,.0555,Init);
filterInv1_4_2ExpFit = exp2Fit(filterInv1_4_Pair);


%% N = 1 Threshold = 0.1
n = 1;
threshold100 = .1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold100)
filtered_1_10 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold100
            filtered_1_10(p) = 0;
        end
    end
end
filterInv1_10 = InverseHaarTransform(filtered_1_10,Matrices,n);
filtInv1_100Resid = FRAG1_ddH2O - filterInv1_10;

filterInv1_100_Pair = [time filterInv1_10];
[filterInv1_100_AAFit,filterInv1_100_AATau] = Anishkin_fit(filterInv1_100_Pair,.0555,[-.3 .5 .2 .4 .05]);
filterInv1_100_2ExpFit = exp2Fit(filterInv1_100_Pair);


%% N = 1 Threshold = 0.2
n = 1;
threshold4 = .2
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered_1_200 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered_1_200(p) = 0;
        end
    end
end
filterInv1_200 = InverseHaarTransform(filtered_1_200,Matrices,n);
filtInv1_200Resid = FRAG1_ddH2O - filterInv1_200;

filterInv1_200_Pair = [time filterInv1_200];
[filterInv1_200_AAFit,filterInv1_200_AATau] = Anishkin_fit(filterInv1_200_Pair,.0555,[-.3 .5 .2 .4 .05]);
filterInv1_200_2ExpFit = exp2Fit(filterInv1_200_Pair);

%% N = 1 Threshold = 1
n = 1;

threshold4 = 1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
filtered1_1000 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered1_1000(p) = 0;
        end
    end
end

filterInv1_1000 = InverseHaarTransform(filtered1_1000,Matrices,n);
filtInv1_1_1000_Resid = FRAG1_ddH2O - filterInv1_1000;

filterInv1_1000_Pair = [time filterInv1_1000];

filterInv1_1000_2ExpFit = exp2Fit(filterInv1_1000_Pair);

%% Unfiltered fits
ddH2O = [time FRAG1_ddH2O];
[ddH2OFit,ddH2OTau]= Anishkin_fit(ddH2O,0.0555,[.3 .4 0.02 .1 .07]);
ddH2O2ExpFit =exp2Fit(ddH2O);

%% Write to Excel
dest = 'C:\Users\sukharevlab\Documents\Schams\Stopped Flow\All Data\Anishkin Fit Files\Tau\08-26-16 000 Constants Haar Transform.xlsx';

xlswrite(dest,{'N = 10'}, 'Sheet1','J2')
xlswrite(dest,{'N = 5'},'Sheet1','G2')
xlswrite(dest,{'N = 1'}, 'Sheet1','D2')
xlswrite(dest,{'Threshold = 0.001'},'Sheet1','A4')
xlswrite(dest,{'Threshold = 0.002'},'Sheet1', 'A7')
xlswrite(dest,{'Threshold = 0.004'},'Sheet1', 'A10')


xlswrite(dest,filterInv1AATau,'J4:K5')
xlswrite(dest,filterInv2AATau,'J7:K8')
xlswrite(dest,filterInv4AATau,'J10:K11')
xlswrite(dest,filterInv100_AATau,'J13:K14')
xlswrite(dest,filterInv200_AATau,'J16:K17')

xlswrite(dest,filterInv5_1_AATau,'G4:H5')
xlswrite(dest,filterInv5_2_AATau,'G7:H8')
xlswrite(dest,filterInv5_4_AATau,'G10:H11')
xlswrite(dest,filterInv5_100_AATau,'G13:H14')
xlswrite(dest,filterInv5_200_AATau,'G16:H17')

xlswrite(dest,filterInv1_1_AATau,'D4:E5')
xlswrite(dest,filterInv1_2_AATau,'D7:E8')
xlswrite(dest,filterInv1_4_AATau,'D10:E11')
xlswrite(dest,filterInv1_100_AATau,'D13:E14')
xlswrite(dest,filterInv1_200_AATau,'D16:E17')

xlswrite(dest,{'N = 10'}, 'Sheet2','J2')
xlswrite(dest,{'N = 5'},'Sheet2','G2')
xlswrite(dest,{'N = 1'}, 'Sheet2','D2')
xlswrite(dest,{'Threshold = 0.001'},'Sheet2','A4')
xlswrite(dest,{'Threshold = 0.002'},'Sheet2', 'A10')
xlswrite(dest,{'Threshold = 0.004'},'Sheet2', 'A16')



xlswrite(dest,filterInv1_2ExpFit,'Sheet2','J4:K8')
xlswrite(dest,filterInv2_2ExpFit,'Sheet2','J10:K14')
xlswrite(dest,filterInv4_2ExpFit,'Sheet2','J16:K20')
xlswrite(dest,filterInv10_2ExpFit,'Sheet2','J22:K26')
xlswrite(dest,filterInv20_2ExpFit,'Sheet2','J28:K32')
xlswrite(dest,filterInv1000_2ExpFit,'Sheet2','J34:K38')

xlswrite(dest,filterInv5_1_2ExpFit,'Sheet2','G4:H8')
xlswrite(dest,filterInv5_2_2ExpFit,'Sheet2','G10:H14')
xlswrite(dest,filterInv5_4_2ExpFit,'Sheet2','G16:H20')
xlswrite(dest,filterInv5_100_2ExpFit,'Sheet2','G22:H26')
xlswrite(dest,filterInv5_200_2ExpFit,'Sheet2','G28:H32')
xlswrite(dest,filterInv5_1000_2ExpFit,'Sheet2','G34:H38')

xlswrite(dest,filterInv1_1_2ExpFit,'Sheet2','D4:E8')
xlswrite(dest,filterInv1_2_2ExpFit,'Sheet2','D10:E14')
xlswrite(dest,filterInv1_4_2ExpFit,'Sheet2','D16:E20')
xlswrite(dest,filterInv1_100_2ExpFit,'Sheet2','D22:E26')
xlswrite(dest,filterInv1_200_2ExpFit,'Sheet2','D28:E32')
xlswrite(dest,filterInv1_1000_2ExpFit,'Sheet2','D34:E38')

xlswrite(dest,ddH2OTau,'Sheet3','D4:E5')
xlswrite(dest,ddH2O2ExpFit,'Sheet3','G4:H8')
close all

%% 
plot(time,FRAG1_ddH2O)
axis([ 0 0.512 -.3 .2])
xlabel('Time')
ylabel('Cell Scattering')
title('E. coli 1100 mOsm Downshock')


figure
hold on
plot(filterInv10_AAFit)
plot(time,filterInv10)
plot(time,FRAG1_ddH2O)
axis([ 0 0.512 -.3 .2])
xlabel('Time')
ylabel('Cell Scattering')
title('')

figure
hold on
plot(time,filterInv100)
plot(time,filterInv200)
axis([ 0 0.512 -.3 .2])
xlabel('Time')
ylabel('Cell Scattering')
title('')

%% 
figure
plot(time,filtInv1Resid)
title('N = 10, threshold < 0.001 (Data Set 3)')
xlabel('Time (s)')
ylabel('Residual')

figure
plot(time,filterInv1,time,FRAG1_ddH2O)
title('N = 10, threshold < 0.001 (Data Set 3)')
xlabel('Time (s)')
ylabel('Light Scattering (V)')
