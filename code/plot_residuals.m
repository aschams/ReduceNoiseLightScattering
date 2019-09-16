Residsual (1)= norm(filtInv1Resid,2);
Residsual (2)= norm(filtInv2Resid,2);
Residsual (3)= norm(filtInv1_4_Resid,2);
Residsual (4)= norm(filtInv1_100_Resid,2);
Residsual (5)= norm(filtInv1_200_Resid,2);
Residsual (6)= norm(filtInv1_1000_Resid,2);
Residsual (7)= norm(filtInv_5_1Resid,2);
Residsual (8)= norm(filtInv_5_2Resid,2);
Residsual (9)= norm(filtInv5_4_Resid,2);
Residsual (10)= norm(filtInv5_100Resid,2);
Residsual (11)= norm(filtInv5_200Resid,2);
Residsual (12)= norm(filtInv1_5_1000_Resid,2);
Residsual (13)= norm(filtInv1_1Resid,2);
Residsual (14)= norm(filtInv1_2Resid,2);
Residsual (15)= norm(filtInv1_4Resid,2);
Residsual (16)= norm(filtInv1_100Resid ,2);
Residsual (17)= norm(filtInv1_200Resid,2);
Residsual (18)= norm(filtInv1_1_1000_Resid,2);


%% 
hold on
plot(time,FRAG1_ddH2O,'k')
plot(time,FRAG1_ddH2O_2,'g')
plot(time,FRAG1_ddH2O_3,'r')

legend({'Data Set 1', 'Data Set 2', 'Data Set 3'})
title('Data')
xlabel('Time (s)')
ylabel('Light Scattering (V)')