FRAG1_Data = 'FRAG1 Traces.xlsx';

time = xlsread(FRAG1_Data,'A55:A1078');
FRAG1_ddH2O = xlsread(FRAG1_Data, 'O55:O1078'); %Data Set 2
FRAG1_ddH2O_2 = xlsread(FRAG1_Data, 'C55:C1078'); %Data Set 3
FRAG1_ddH2O_3 = xlsread(FRAG1_Data, 'S55:S1078'); %Data Set 1
[FRAG1_ddH2O_DHT10,Matrices] = DiscreteHaarTransform(FRAG1_ddH2O, 10);


n = 1
threshold4 = .004


FRAG1_ddH2O_FullDHT_DS1 = FullDHT(FRAG1_ddH2O,Matrices,10);
FRAG1_ddH2O_FullDHT_DS2 = FullDHT(FRAG1_ddH2O_2,Matrices,10);
FRAG1_ddH2O_FullDHT_DS3 = FullDHT(FRAG1_ddH2O_3,Matrices,10);
[dimension col] = size(FRAG1_ddH2O_FullDHT_DS1{n});
%% 

filtered_5_004_DS1 = FRAG1_ddH2O_FullDHT_DS1{n};
for p = 1:dimension
    for q = 1: col
        if abs(filtered_5_004_DS1(p)) < threshold4
            filtered_5_004_DS1(p) = 0;
        end
    end
end

filterInv5_4_DS1 = InverseHaarTransform(filtered_5_004_DS1,Matrices,n);

%% 
filtered_5_004_DS2 = FRAG1_ddH2O_FullDHT_DS2{n};
for p = 1:dimension
    for q = 1: col
        if abs(filtered_5_004_DS2(p)) < threshold4
            filtered_5_004_DS2(p) = 0;
        end
    end
end

filterInv5_4_DS2 = InverseHaarTransform(filtered_5_004_DS2,Matrices,n);

%% 
filtered_5_004_DS3 = FRAG1_ddH2O_FullDHT_DS3{n};
for p = 1:dimension
    for q = 1: col
        if abs(filtered_5_004_DS3(p)) < threshold4
            filtered_5_004_DS3(p) = 0;
        end
    end
end

filterInv5_4_DS3 = InverseHaarTransform(filtered_5_004_DS3,Matrices,n);


%% 
norm(filterInv5_4_DS3 - filterInv5_4_DS2,1)
norm(filterInv5_4_DS3 - filterInv5_4_DS2,2)

norm(filterInv5_4_DS3 - filterInv5_4_DS1,1)
norm(filterInv5_4_DS3 - filterInv5_4_DS1,2)

norm(filterInv5_4_DS1 - filterInv5_4_DS2,1)
norm(filterInv5_4_DS1 - filterInv5_4_DS2,2)

%% 
hold on
plot(time,filterInv5_4_DS1,'k')
plot(time,filterInv5_4_DS2,'g')
plot(time,filterInv5_4_DS3,'r')
xlabel({'Time (s)'})
ylabel({'Light Scattering'})
title({'All Data: DHT-1, Threshold = .004'})
legend({'Data Set 1', 'Data Set 2', 'Data Set 3'})