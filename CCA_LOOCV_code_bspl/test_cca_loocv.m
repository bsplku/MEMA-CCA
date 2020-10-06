clear all; close all;
load cca_loocv_dataset.mat
% Examine the relationship between brain and behavior with CCA in LOOCV 
[U_ts_all,V_ts_all] = cca_loocv_bspl(brain_response, behavior_data);

