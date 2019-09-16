%% N = 1 Threshold = 1
n = 1;

threshold4 = 1
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered1_1000 = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered1_1000_(p) = 0;
        end
    end
end

filterInv1_1000_ = InverseHaarTransform(filtered1_1000_,Matrices,n);
filtInv1_1_1000__Resid = FRAG1_ddH2O - filterInv1_1000_;

filterInv1_1000_Pair = [time filterInv1_1000_];

filterInv1_1000__2ExpFit = exp2Fit(filterInv1_1000_Pair)


%% N = 1 Threshold = 2
n = 5;

threshold4 = 2
CountUnderThresh = sum(abs(FRAG1_ddH2O_FullDHT2{n}(:)) < threshold4)
n = 10
filtered1_2000_ = FRAG1_ddH2O_FullDHT2{n};
for p = 1:dimension
    for q = 1: col
        if abs(FRAG1_ddH2O_FullDHT2{n}(p)) < threshold4
            filtered1_2000_(p) = 0;
        end
    end
end

filterInv1_2000_ = InverseHaarTransform(filtered1_2000_,Matrices,n);
filtInv1_1_2000__Resid = FRAG1_ddH2O - filterInv1_2000_;

filterInv1_2000_Pair = [time filterInv1_2000_];

filterInv1_2000__2ExpFit = exp2Fit(filterInv1_2000_Pair)


%% 
FRAG1_Data = '08-26-2016 SF FRAG1 T2.xlsx';

time = xlsread(FRAG1_Data,'A55:A1078');

FRAG1_ddH2O = xlsread(FRAG1_Data, 'O55:O1078'); %Data Set 2
FRAG1_ddH2O_2 = xlsread(FRAG1_Data, 'C55:C1078'); %Data Set 3
FRAG1_ddH2O_3 = xlsread(FRAG1_Data, 'S55:S1078'); %Data Set 1

