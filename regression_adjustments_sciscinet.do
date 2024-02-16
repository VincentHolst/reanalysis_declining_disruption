*************
* SciSciNet *
*************
// this code complements the python script
// used for robust standard errors

// clear open data
clear
clear matrix

// turn more off
set more off

// load .dta
// first, run the regression_stata_prep_sciscinet.ipynb notebook 
use "data_declining_disruption/SciSciNet.dta", replace

// encode strings
encode Field_Name, generate(fields)

// zero reference dummy
gen zero_reference_dummy = references == 0

// controls
global field_controls no_of_papers_subfield_t no_of_references_mean_subfield_t no_of_authors_mean_subfield_t 
global paper_controls references

// model 1
reghdfe cd_5 $paper_controls $field_controls i.year, absorb(fields) vce(robust)

// model 2
reghdfe cd_5 $paper_controls $field_controls i.year zero_reference_dummy, absorb(fields) vce(robust)
