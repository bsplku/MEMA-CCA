# Mixed-effects multilevel analysis (MEMA) & Canonical correlation analysis (CCA) in fMRI study
* Guide for MEMA followed by CCA in leave-one-subject-out cross validation

## Sample data :
#### for MEMA:
* Our dataset consists of 10 subjects, each subject smoked both e-cigarettes in turns (4 blocks per run) 
* The samples of pre-preocessed fMRI BOLD timeseries were acquired while the subjects were smoking with two types of the MR-competible e-cigarette apparatus (i.e., ECIG; with nicotine, SCIG; without nicotine) in MRI scanner 
#### for CCA:
* Brain_response : The z-scored coefficient from 1st-level analysis (GLM; General Linear Model). The dataset consists of 10 subjects
* Behavioral_data : Three measurements (i.e., Similarity, Urge-to-smoke, and Smoking duration) normalized in zero to one. The dataset consists of 10 subjects
* All of subjects scored two behavioral measurements (similarity to their own e-cigarette in terms of nicotine absorption and the level of urge-to-smoke) after smoking each type of MR-competible e-cigarette apparatus and recorded the smoking duration.


## MEMA script:
### Requirement:
* Install AFNI software on your own desktop/laptop https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html

## MATLAB codes:

