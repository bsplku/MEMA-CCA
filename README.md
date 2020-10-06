# Mixed-effects multilevel analysis (MEMA) & Canonical correlation analysis (CCA) in fMRI study
* Guide for MEMA followed by CCA in leave-one-subject-out cross validation
* To find the evidence of association between behavior and brain identified from high heterogeniety

## Sample data:
#### for MEMA:
* The Blood-oxygenation-level-dependent(BOLD) fMRI volumes were acquired while the subjects were smoking with two types of the MR-competible e-cigarette apparatus (i.e., ECIG; with nicotine, SCIG; without nicotine) in MRI scanner  
* The preprocessed BOLD fMRI were analyzed with General Linear Model (GLM) for an individual level analysis (using “3dREMLfit” for least squares restricted maximum likelihood estimation in AFNI)

#### for CCA:
* Brain_response : The z-scored coefficient (beta) of each condition (ECIG & SCIG) from 1st-level analysis (GLM) 
  * The dataset consists of 10 subjects x 7 voxels (beta values of the center voxel and its six neighboring voxels within right insula identified from MEMA)
* Behavioral_data : Three behavior data (i.e., Similarity, Urge-to-smoke, and Smoking duration) normalized in zero to one. 
  * All of subjects scored two behavioral measurements (Similarity to their own e-cigarette in terms of nicotine absorption and the level of Urge-to-smoke) after smoking each type of MR-competible e-cigarette apparatus and the Smoking duration was recorded
  * The dataset consists of 10 subjects x 3 behavior data

## MEMA:
* fMRI group analysis that incorporates both the variability across subjects and the precision estimate of each effect of interest from individual subject anlyses
  * Chen, Gang, et al. "FMRI group analysis combining effect estimates and their variances." Neuroimage 60.1 (2012): 747-765.
#### Requirement:
* Install AFNI and R software on your own desktop/laptop https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html
#### Download sample data:
* Please download the sample data below link:
#### Data structure:
* 
#### Running code:
* 

## CCA in leave-one-subject-out cross validation:
#### Requirement:
* Install MATLAB (>2014a) on your own PC
#### Download sample data:
* Please download the sample data below link:
#### Data structure:
* 
#### Running code:
* 
