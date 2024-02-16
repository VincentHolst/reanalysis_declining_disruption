# Dataset Artefacts are the Hidden Drivers of the Declining Disruptiveness in Science

This repository contains the reanalysis code to “Dataset Artefacts are the Hidden Drivers of the Declining Disruptiveness in Science” by Vincent Holst, Andres Algaba, Floriano Tori, Sylvia Wenmackers and Vincent Ginis (https://zenodo.org/records/10656941).

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

2. Replication data of our reanalysis available under https://zenodo.org/records/10619476.

SciSciNet data source 
- SciSciNet_df.csv
- SciSciNet_rewired_df.csv

DBLP-Citation-network V14
- DBLPv14_df.csv
- DBLPv14_rewired_df.csv

Regression for PatentsView
- patentsview_residuals_1.npy (model 3 in Supplementary Table S1)
- patentsview_residuals_2.npy (model 4 in Supplementary Table S1)
- patentsview_margins.csv 

Regression for SciSciNet 
- SciSciNet_residuals_1.npy (model 1 in Supplementary Table S1)
- SciSciNet_residuals_2.npy (model 2 in Supplementary Table S1)
- SciSciNet_margins.csv 

# Instructions for the data 

Download the data files at the links provided above and insert in the data folder. 

# Overview of the code 

- config_declining_disruption.py : configuration file 
- reanalysis_declining_disruption.ipynb : notebook to reproduce the figures in our manuscript
- regression_adjustments_patentsview.ipynb : notebook to compute the margins and residuals for the PatentsView regression (models 3 and 4 in Supplementary Table S1)
- regression_adjustments_sciscinet.ipynb : notebook to compute the margins and residuals for the SciSciNet regression (models 3 and 4 in Supplementary Table S1)
- regression_stata_prep_sciscinet.ipynb : notebook to prepare the SciSciNet data for Stata 
- regression_adjustments_patentsview.do : compute the robust standard errors for the PatentsView regression models
- regression_adjustments_sciscinet.do : compute the robust standard errors for the SciSciNet regression models 