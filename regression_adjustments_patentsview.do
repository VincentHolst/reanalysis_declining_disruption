***************
* PatentsView *
***************
// this code complements the python script
// used for robust standard errors

// clear open data
clear
clear matrix

// turn more off
set more off

// load .dta 
// first, download the original data provided by Park et al. (2023) under the following link: https://zenodo.org/records/7258379. 
// then insert patentsview_df_for_regressions.dta in the data folder. 
use "data_declining_disruption/patentsview_df_for_regressions.dta", replace

// subset years for consistency with plots
keep if grant_year <= 2010
keep if grant_year >= 1980

// subset fields for consistency with plots
drop if field_nber_category_id == ""
drop if field_nber_category_id == "6"
drop if field_nber_category_id == "7"

*************
* VARIABLES *
*************

// encode strings
encode field_nber_subcategory_id, generate(nfield_nber_subcategory_id)

// compute nsc_inventors_total_mean
gen nsc_inventors_total_mean = nsc_upatents_inventors_total_t/nsc_upatents_t

// compute nsc_upatents_cited_total_t_mean
gen nsc_upatents_cited_total_t_mean = nsc_upatents_cited_total_t/nsc_upatents_t

// zero
gen zero_reference_dummy = cited_total == 0

**********
* LABELS *
**********

// make uniform names
rename nfield_nber_subcategory_id subfield_id
rename grant_year pubyear
rename nsc_upatents_t no_of_works
rename nsc_upatents_cited_total_t_mean no_cited_mean
rename nsc_inventors_total_mean no_authors_mean

label variable pubyear "Year"
label variable no_of_works "Number of new papers/patents (logged)"
label variable no_cited_mean "Mean number of papers/patents cited"
label variable no_authors_mean "Mean number of authors/inventors per paper/patent"
label variable cited_total "Number of papers/patents cited"

**********
* MODELS *
**********

// controls
global field_controls no_of_works no_cited_mean no_authors_mean 
global paper_controls cited_total

// model 3 (Model 8 from Park et al.)
reghdfe cd_5 $paper_controls $field_controls i.pubyear, absorb(subfield_id) vce(robust)

// model 4
reghdfe cd_5 $paper_controls $field_controls i.pubyear i.zero_reference_dummy, absorb(subfield_id) vce(robust)
