# Mixed-effects multilevel analysis (MEMA) & Canonical correlation analysis (CCA) in fMRI study
* Guide for MEMA followed by CCA in leave-one-subject-out cross validation (LOOCV)
* To find the evidence of association between behavior and brain identified from high heterogeniety

## Sample data:
### for MEMA:
* The Blood-oxygenation-level-dependent(BOLD) fMRI volumes were acquired while the subjects were smoking with the MR-competible e-cigarette apparatus (ECIG; with nicotine) in MRI scanner  
* The preprocessed BOLD fMRI were analyzed with General Linear Model (GLM) for an individual level analysis (using “3dREMLfit” for least squares restricted maximum likelihood estimation in AFNI)

### for CCA:
* brain_response : The z-scored coefficient (beta) of the condition (ECIG) from 1st-level analysis (GLM) 
  * The dataset consists of 18 subjects x 7 voxels (beta values of the center voxel and its six neighboring voxels within right insula identified from MEMA)
* behavior_data : Three behavior data (i.e., **Similarity, Urge-to-smoke, and Smoking duration**) normalized in zero to one. 
  * All of subjects scored two behavioral measurements (**Similarity to their own e-cigarette in terms of nicotine absorption** and **the level of Urge-to-smoke**) after smoking each type of MR-competible e-cigarette apparatus and the **Smoking duration** was recorded
  * The dataset consists of 18 subjects x 3 behavior data

## MEMA:
* fMRI group analysis that incorporates both the variability across subjects and the precision estimate of each effect of interest from individual subject anlyses
  * Chen, Gang, et al. "FMRI group analysis combining effect estimates and their variances." Neuroimage 60.1 (2012): 747-765.
### Requirement:
* Install AFNI and R software on your own desktop/laptop: https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/background_install/install_instructs/index.html
### Download sample data:
* Please download the sample data this link: http://bspl.korea.ac.kr/Research_data/MEMA-CCA/MEMA_dir.zip
### Data structure:
The sample dataset consists of two folders:
* beta: NIfTI files (S_E_beta.nii) of 18 subjects' individual beta value in whole brain 
* tscore: NIfTI files (S_E_tscore.nii) of 18 subjects' individual Student's *t*-test in whole brain 
The preprocessed BOLD fMRI were analyzed with General Linear Model (GLM) for an individual level analysis 
### Shell script:
* Open a terminal, navigate to the *MEMA_dir* directory, 
```bash
cd [MEMA_dir] 
``` 
* Edit the directory and prefix you want in **MEMA_script.tcsh**
* Run the shell script
```bash
tcsh MEMA_script_bspl.tcsh 
``` 
* The results saved in *results* folder as *MEMA_ecig*: **MEMA_ecig+tlrc, MEMA_ecig_ICC, MEMA_ecig_resZ**
> Note : You can freely change the prefix you want. If you need more information of the other results, please find the reference above
* Open AFNI software in order to check the results
```bash
afni MEMA_ecig+tlrc.HEAD
``` 


## CCA in leave-one-subject-out cross validation:
* To test the statistical significance of the relationship between fMRI and behavior data
* In the validataion set (n=1), canonical variates and their respective canonical correlations were created using coefficients from the CCA performed in the training set (n=17)
  * Dinga, Richard, et al. "Evaluating the evidence for biotypes of depression: Methodological replication and extension of." NeuroImage: Clinical 22 (2019): 101796.
### Requirement:
* Install MATLAB (>2014a) on your own PC
### Download sample data:
* Please download the sample data this link: http://bspl.korea.ac.kr/Research_data/MEMA-CCA/cca_loocv_dataset.mat
### Data structure:
The input '.mat' file includes:
* 'brain_response' is the z-scored coefficients of seven voxels from individual subjects analysis within ROI (right insula) identified from high heterogeniety (chi-square < 10^-8) 
* 'behavior_data' is the 0 to 1 normalized scores of three behavior data 
### MATLAB code:
* 'cca_loocv_bspl.m' is for CCA in LOOCV
* 'linear_reg_bspl.m' is for the examination of the linear regression for the relationship between dependent and independent variables 
* Run the 'test_cca_loocv.m' 
* Three figures will be shown:
  1. Correlation of pair of canonical variates
  2. Correlations of behavior data canonical variate and each behavioral datum [Similiarity, Urge-to-smoke, Smoking duration]
  3. Correlations of brain response canonical variate and each behavioral datum [Similiarity, Urge-to-smoke, Smoking duration]
