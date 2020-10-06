clear all; close all;
load cca_loocv_dataset.mat
% Examine the relationship between brain and behavior with CCA in LOOCV 
[U_ts_all,V_ts_all] = cca_loocv_bspl(brain_response, behavior_data);

% Bootstrapping 
n_iter = 5000;  % The number of the iteration 
bootstrap_bspl(U_ts_all, V_ts_all, n_iter);

% Bootstrapping 
for idx =1:size(crav_quest,2)
    bootstrap_bspl(V_ts_all, crav_quest(:,idx), n_iter);
end

for idx =1:size(crav_quest,2)
    bootstrap_bspl(U_ts_all, crav_quest(:,idx), n_iter);
end