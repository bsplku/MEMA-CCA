#!/bin/tcsh -xef

# ---------------------- set process variables ----------------------

set dirA = /home/[user]/MEMA_dir/ # Fill in your own dataset directory

# specify and possibly create results directory
set results_dir = results # Fill in the your own results directory
if ( ! -d $results_dir ) mkdir $results_dir

# ------------------------- process the data -------------------------
# specify the prefix you want. default = MEMA_ecig 
# Input data should consist of coefficient and t-score from individual subjects analysis
# If you need more information, please find this reference:
3dMEMA -prefix $results_dir/MEMA_ecig                                   \
       -groups ECIG                                                     \
       -HKtest -model_outliers -unequal_variance -residual_Z            \
       -set ECIG                                                        \
          01 "$dirA/beta/S01_E_beta.nii" 					\
       	     "$dirA/tscore/S01_E_tscore.nii"       				\
          02 "$dirA/beta/S02_E_beta.nii" 					\
       	     "$dirA/tscore/S02_E_tscore.nii"       				\
          03 "$dirA/beta/S03_E_beta.nii" 					\
       	     "$dirA/tscore/S03_E_tscore.nii"       				\
          04 "$dirA/beta/S04_E_beta.nii" 					\
       	     "$dirA/tscore/S04_E_tscore.nii"       				\
          05 "$dirA/beta/S05_E_beta.nii" 					\
       	     "$dirA/tscore/S05_E_tscore.nii"       				\
          06 "$dirA/beta/S06_E_beta.nii" 					\
       	     "$dirA/tscore/S06_E_tscore.nii"       				\
          07 "$dirA/beta/S07_E_beta.nii" 					\
       	     "$dirA/tscore/S07_E_tscore.nii"       				\
          08 "$dirA/beta/S08_E_beta.nii" 					\
       	     "$dirA/tscore/S08_E_tscore.nii"       				\
          09 "$dirA/beta/S09_E_beta.nii" 					\
       	     "$dirA/tscore/S09_E_tscore.nii"       				\
          10 "$dirA/beta/S10_E_beta.nii" 					\
       	     "$dirA/tscore/S10_E_tscore.nii"       				\
          11 "$dirA/beta/S11_E_beta.nii" 					\
       	     "$dirA/tscore/S11_E_tscore.nii"       				\
          12 "$dirA/beta/S12_E_beta.nii" 					\
       	     "$dirA/tscore/S12_E_tscore.nii"       				\
          13 "$dirA/beta/S13_E_beta.nii" 					\
       	     "$dirA/tscore/S13_E_tscore.nii"       				\
          14 "$dirA/beta/S14_E_beta.nii" 					\
       	     "$dirA/tscore/S14_E_tscore.nii"       				\
          15 "$dirA/beta/S15_E_beta.nii" 					\
       	     "$dirA/tscore/S15_E_tscore.nii"       				\
          16 "$dirA/beta/S16_E_beta.nii" 					\
       	     "$dirA/tscore/S16_E_tscore.nii"       				\
          17 "$dirA/beta/S17_E_beta.nii" 					\
       	     "$dirA/tscore/S17_E_tscore.nii"       				\
          18 "$dirA/beta/S18_E_beta.nii" 					\
       	     "$dirA/tscore/S18_E_tscore.nii"

