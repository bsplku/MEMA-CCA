# Mixed-effects multilevel analysis (MEMA) & Canonical correlation analysis (CCA) in fMRI study
* Guide for MEMA followed by CCA in leave-one-subject-out cross validation
* To find the evidence of association between behavior and brain identified from high heterogeniety

## Sample data :
#### for MEMA:
* Our datasets were acquired while the subjects were smoking with two types of the MR-competible e-cigarette apparatus (i.e., ECIG; with nicotine, SCIG; without nicotine) in MRI scanner  
* The samples of pre-preocessed fMRI timeseries consists of 10 subjects

#### for CCA:
* Brain_response : The z-scored coefficient (beta) from 1st-level analysis (GLM; General Linear Model). The dataset consists of 10 subjects
* Behavioral_data : Three measurements (i.e., Similarity, Urge-to-smoke, and Smoking duration) normalized in zero to one. The dataset consists of 10 subjects
* All of subjects scored two behavioral measurements (Similarity to their own e-cigarette in terms of nicotine absorption and the level of Urge-to-smoke) after smoking each type of MR-competible e-cigarette apparatus and the Smoking duration was recorded

## MEMA:
* fMRI group analysis that incorporates both the variability across subjects and the precision estimate of each effect of interest from individual subject anlyses
  * Chen, Gang, et al. "FMRI group analysis combining effect estimates and their variances." Neuroimage 60.1 (2012): 747-765.
### Requirement:
* Install AFNI and R software on your own desktop/laptop https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html

## CCA in leave-one-subject-out cross validation:
### Requirement:
* Install MATLAB (>2014a) on your own PC

