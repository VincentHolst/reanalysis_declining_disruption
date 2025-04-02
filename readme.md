# Dataset Artefacts are the Hidden Drivers of the Declining Disruptiveness in Science

This repository contains the reanalysis code to “Dataset Artefacts are the Hidden Drivers of the Declining Disruptiveness in Science” by Vincent Holst, Andres Algaba, Floriano Tori, Sylvia Wenmackers and Vincent Ginis (https://arxiv.org/abs/2402.14583).

# System requirements 

We use the same software packages as Park et al. (2023), that is pandas 1.4.3, numpy 1.23.1, matplotlib 3.5.2 and seaborn 0.11.2. To replicate the regression table, we use StataMP v.18.0 (reghdfe v.6.12.3).

# Overview of the data 

1. Original data provided by Park et al. (2023) is available under https://zenodo.org/records/7258379.

PatentsView data source 
- patentsview_analytical_df.csv.gz 
- patentsview_cdindex_rewired_analytical_df.csv.gz
- patentsview_cdindex_normalized_analytical_df.csv.gz
- patentsview_df_for_regressions.dta 

Various data sources (in particular: Web of Science)
- unified_cdindex_df.csv.gz 

Normalized CD indices for Web of Science 
- wos_cdindex_normalized_analytical_df.csv.gz

2. Replication data of our reanalysis available under https://zenodo.org/records/10619475.

SciSciNet data source 
- SciSciNet_df.csv
- SciSciNet_df_DocType.csv
- SciSciNet_df_raw_journal_data.csv
- SciSciNet_rewired_df.csv
- SciSciNet_rewired_df_raw_journal_data.csv
- SciSciNet_df_random_sample_final.xlsx

DBLP-Citation-network V14
- DBLPv14_df.csv
- DBLPv14_rewired_df.csv

Web of Science data source 
- wos_df_rewiring.csv
- wos_margins.csv

Regression for PatentsView
- patentsview_residuals_1.npy (model 3 in Supplementary Table S1)
- patentsview_residuals_2.npy (model 4 in Supplementary Table S1)
- patentsview_margins.csv 

Regression for SciSciNet 
- SciSciNet_residuals_1.npy (model 1 in Supplementary Table S1)
- SciSciNet_residuals_1_subset_journal_conference.npy
- SciSciNet_residuals_1_raw_journal_data.npy (model 3 in Supplementary Table S6)
- SciSciNet_residuals_2.npy (model 2 in Supplementary Table S1)
- SciSciNet_residuals_2_subset_journal_conference.npy
- SciSciNet_residuals_2_raw_journal_data.npy (model 4 in Supplementary Table S6)
- SciSciNet_margins.csv (margins for the models 1 and 2 in Supplementary Table S1)
- SciSciNet_margins_subset_journal_conference.csv
- SciSciNet_margins_raw_journal_data.csv (margins for the models 3 and 4 in Supplementary Table S6)

# Instructions for the data 

Download the data files at the links provided above and insert in the data folder. 

# Overview of the code 

- config_declining_disruption.py : configuration file 
- reanalysis_declining_disruption.ipynb : notebook to reproduce the figures in our manuscript
- reanalysis_declining_disruption_additional_robustness_checks.ipynb : notebook to reproduce the figures for additional robustness checks in our manuscript
- regression_adjustments_patentsview.ipynb : notebook to compute the margins and residuals for the PatentsView regression (models 3 and 4 in Supplementary Table S1)

- regression_adjustments_sciscinet.ipynb : notebook to compute the margins and residuals for the SciSciNet regression (models 1 and 2 in Supplementary Table S1)
- regression_adjustments_sciscinet_subset_journal_conference.ipynb : notebook to compute the margins and residuals for the SciSciNet regression (models 1 and 2 in Supplementary Table S1 but subsetted to Journal and Conference contributions)
- regression_adjustments_sciscinet_raw_journal_data.ipynb : notebook to compute the margins and residuals for the SciSciNet regression based on the raw journal data (models 3 and 4 in Supplementary Table S6)

- regression_stata_prep_sciscinet.ipynb : notebook to prepare the SciSciNet data for Stata 
- regression_stata_prep_sciscinet_raw_journal_data.ipynb : notebook to prepare the raw SciSciNet journal data for Stata 
- regression_adjustments_patentsview.do : compute the robust standard errors for the PatentsView regression models (models 3 and 4 in Supplementary Table S1)

- regression_adjustments_sciscinet.do : compute the robust standard errors for the SciSciNet regression models (models 1 and 2 in Supplementary Table S1)
- regression_adjustments_sciscinet_raw_journal_data.do : compute the robust standard errors for the SciSciNet regression models based on the raw journal data (models 3 and 4 in Supplementary Table S6)

# Instructions for the code 

A detailed description to install the necessary software packages can be found in both reanalysis_declining_disruption.ipynb and reanalysis_declining_disruption_additional_robustness_checks.ipynb. The notebooks also contain all the necessary information to run the data, the expected output, the expected run time (including options to have faster run times in omitting confidence intervals), and reproduction instructions. 
