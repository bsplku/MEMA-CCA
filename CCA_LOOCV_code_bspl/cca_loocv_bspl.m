%% 2018 Jan 09. made by Sungman Jo
% brain_data = subjects x voxels (18 x 7)
% behavior_data = subjects x behavioral data [similarity, urge-to-smoke, smoking duration] (18 x 3)
% A = canonical weight of brain data
% B = canonical weight of behavioral data
% R = correlation between the columns of U and V
% U = canonical variate of brain data
% V = canonical variate of behavioral data
% figure(10) ==> pair of first column of Vts and Uts (canonical variate) 
% figure(11) ==> each behavioral datum vs. first column of Vts 
% figure(12) ==> each behavioral datum vs. first column of Uts 
% This code is for Canonical Correlation Analysis (CCA) with Leave-one-subject-out cross validation (LOOCV) 
% You can run this funciton with linear_reg_bspl.m in order to draw the figures and linear regression line and 
% obtain the correlation with each other (r, p value).
% 
function  [U_ts_all,V_ts_all]  = cca_loocv_bspl( brain_data, behavior_data )
U_ts_all =[];
V_ts_all =[];
CQ=[];
for CV_num = 1:size(brain_data,1)
    indices = linspace(1,size(brain_data,1),size(brain_data,1));
    test = (indices == CV_num); train = ~test;  % Train and test index were allocated separately
    
    [A_tr B_tr R_tr U_tr V_tr ] = canoncorr(brain_data(train,:),behavior_data(train,:))  % Canonical Correlation Analysis with train group
    U_ts = brain_data(test,:)*A_tr;  % test group of brain data canonical variate
    U_ts_all = [U_ts_all; U_ts];
    V_ts = behavior_data(test,:)*B_tr; % test group of behavioral data canonical variate
    V_ts_all = [V_ts_all; V_ts];
    CQ = [CQ ; behavior_data(test,:)]; % stack with test set of behavioral data
    
    figure(10);set(gcf,'NumberTitle','off','Name','Correlation of pair of canonical variates'); 
    plot(U_ts(1),V_ts(1),'o','LineWidth',2,'MarkerSize',10);axis square;xlabel('U');ylabel('V');set(gca,'linewidth',3,'FontSize', 16);hold on;
    
    figure(11);set(gcf,'NumberTitle','off', 'Name','Correlation of behaviroal data canonical variate and each behavioral datum')
    for idx = 1:size(behavior_data,2)
        subplot(1,size(behavior_data,2),idx);plot(V_ts(1),behavior_data(test,idx),'o','LineWidth',3,'MarkerSize',12);hold on;axis square;set(gca,'linewidth',3,'FontSize',17);
    end
    figure(12);set(gcf,'NumberTitle','off', 'Name','Correlation of brain data canonical variate and each behavioral datum')
    for idx = 1:size(behavior_data,2)
        subplot(1,size(behavior_data,2),idx);plot(U_ts(1),behavior_data(test,idx),'o','LineWidth',3,'MarkerSize',12);hold on;axis square;set(gca,'linewidth',3,'FontSize', 17);
    end
end

figure(10);
[r1 p1 ] = corr(U_ts_all(:,1),V_ts_all(:,1));title(sprintf('r = %.2f, p = %.3f',r1,p1));
linear_reg_bspl(U_ts_all(:,1),V_ts_all(:,1));

figure(11);
for idx = 1:size(behavior_data,2)
    [r p ] = corr(V_ts_all(:,1),CQ(:,idx));
    subplot(1,size(behavior_data,2),idx);hold on;title(sprintf('r = %.2f, p = %.3f',r,p));
    linear_reg_bspl(V_ts_all(:,1),CQ(:,idx));
end
figure(12);
for idx = 1:size(behavior_data,2)
    [r p ] = corr(V_ts_all(:,1),CQ(:,idx));
    subplot(1,size(behavior_data,2),idx);hold on;title(sprintf('r = %.2f, p = %.3f',r,p));
    linear_reg_bspl(U_ts_all(:,1),CQ(:,idx));
end

end

