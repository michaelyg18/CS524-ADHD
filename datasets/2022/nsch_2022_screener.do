/* 09192023 */
*************************************************************
*************************************************************
local file = "<<INSERT FILE DIRECTORY>>"
*************************************************************
*************************************************************

use "`file'\nsch_2022e_screener", clear
label var c_fws  "Child Weight"
label var c_cshcn  "Special Health Care Needs Status of Child"
label var c_k2q23  "Child Treatment for Chronic Emotion Develop Behave"
label var c_k2q22  "Child Needs Treatment for Emotion Develop Behave"
label var c_k2q21  "Child Special Therapy for Health Condition for 12 Months"
label var c_k2q20  "Child Special Therapy for Health Condition"
label var c_k2q19  "Child Special Therapy"
label var c_k2q18  "Child Limited Ability from Health Condition for 12 Months"
label var c_k2q17  "Child Limited Ability from Health Condition"
label var c_k2q16  "Child Limited Ability"
label var c_k2q15  "Child Medical Care Currently for 12 Months"
label var c_k2q14  "Child Medical Care Used or Needed for Health Condition"
label var c_k2q13  "Child Needs or Uses More Medical Care than Others"
label var c_k2q12  "Child Medication Currently for 12 Months"
label var c_k2q11  "Child Medication Used or Needed for Health Condition"
label var c_k2q10  "Child Needs or Uses Medication Currently"
label var c_race_r_if  "Imputation Flag for C_RACE_R"
label var c_hispanic_r_if  "Imputation Flag for C_HISPANIC_R"
label var c_sex_if  "Imputation Flag for C_SEX"
label var c_english  "Child Speak English"
label var c_sex  "Child Sex"
label var c_hispanic_r  "Hispanic Origin of Child, Recode"
label var racer  "Race of Child, Recode"
label var c_race_r  "Race of Child, Detailed"
label var c_age_years  "Child Age - Years"
label var year  "Survey Year"
label var linenum  "Child Line Number"
label var mpc_yn  "Metropolitan Principal City Status"
label var metro_yn  "Metropolitan Statistical Area Status"
label var cbsafp_yn  "Core Based Statistical Area Status"
label var hhlanguage  "Primary Household Language"
label var totkids_r  "Number of Children in Household"
label var fipsst  "State FIPS Code"
label var fwh  "Household Weight"
label var stratum  "Sampling Stratum"
label var hhids  "Unique Household ID (Screener)"
label var tenure  "The Conditions under Which Land or Buildings Are Held or Occupied"
label var tenure_if  "Imputation Flag for TENURE"

label define c_age_years_lab  .m "No valid response"
label define c_age_years_lab  .n "Not in universe", add
label define c_age_years_lab  .l "Logical skip", add
label define c_age_years_lab  .d "Suppressed for confidentiality", add
cap label values c_age_years c_age_years_lab
label define c_cshcn_lab  1  "Special Health Care Needs"
label define c_cshcn_lab  2  "No Special Health Care Needs", add
label define c_cshcn_lab  .m "No valid response", add
label define c_cshcn_lab  .n "Not in universe", add
label define c_cshcn_lab  .l "Logical skip", add
label define c_cshcn_lab  .d "Suppressed for confidentiality", add
cap label values c_cshcn c_cshcn_lab
label define c_english_lab  1  "Very well"
label define c_english_lab  2  "Well", add
label define c_english_lab  3  "Not well", add
label define c_english_lab  4  "Not at all", add
label define c_english_lab  .m "No valid response", add
label define c_english_lab  .n "Not in universe", add
label define c_english_lab  .l "Logical skip", add
label define c_english_lab  .d "Suppressed for confidentiality", add
cap label values c_english c_english_lab
label define c_fws_lab  .m "No valid response"
label define c_fws_lab  .n "Not in universe", add
label define c_fws_lab  .l "Logical skip", add
label define c_fws_lab  .d "Suppressed for confidentiality", add
cap label values c_fws c_fws_lab
label define c_hispanic_r_lab  1  "Hispanic or Latino Origin"
label define c_hispanic_r_lab  2  "Not Hispanic or Latino Origin", add
label define c_hispanic_r_lab  .m "No valid response", add
label define c_hispanic_r_lab  .n "Not in universe", add
label define c_hispanic_r_lab  .l "Logical skip", add
label define c_hispanic_r_lab  .d "Suppressed for confidentiality", add
cap label values c_hispanic_r c_hispanic_r_lab
label define c_hispanic_r_if_lab  1  "Imputed"
label define c_hispanic_r_if_lab  0  "Not imputed", add
label define c_hispanic_r_if_lab  .m "No valid response", add
label define c_hispanic_r_if_lab  .n "Not in universe", add
label define c_hispanic_r_if_lab  .l "Logical skip", add
label define c_hispanic_r_if_lab  .d "Suppressed for confidentiality", add
cap label values c_hispanic_r_if c_hispanic_r_if_lab
label define c_k2q10_lab  1  "Yes"
label define c_k2q10_lab  2  "No", add
label define c_k2q10_lab  .m "No valid response", add
label define c_k2q10_lab  .n "Not in universe", add
label define c_k2q10_lab  .l "Logical skip", add
label define c_k2q10_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q10 c_k2q10_lab
label define c_k2q11_lab  1  "Yes"
label define c_k2q11_lab  2  "No", add
label define c_k2q11_lab  .m "No valid response", add
label define c_k2q11_lab  .n "Not in universe", add
label define c_k2q11_lab  .l "Logical skip", add
label define c_k2q11_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q11 c_k2q11_lab
label define c_k2q12_lab  1  "Yes"
label define c_k2q12_lab  2  "No", add
label define c_k2q12_lab  .m "No valid response", add
label define c_k2q12_lab  .n "Not in universe", add
label define c_k2q12_lab  .l "Logical skip", add
label define c_k2q12_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q12 c_k2q12_lab
label define c_k2q13_lab  1  "Yes"
label define c_k2q13_lab  2  "No", add
label define c_k2q13_lab  .m "No valid response", add
label define c_k2q13_lab  .n "Not in universe", add
label define c_k2q13_lab  .l "Logical skip", add
label define c_k2q13_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q13 c_k2q13_lab
label define c_k2q14_lab  1  "Yes"
label define c_k2q14_lab  2  "No", add
label define c_k2q14_lab  .m "No valid response", add
label define c_k2q14_lab  .n "Not in universe", add
label define c_k2q14_lab  .l "Logical skip", add
label define c_k2q14_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q14 c_k2q14_lab
label define c_k2q15_lab  1  "Yes"
label define c_k2q15_lab  2  "No", add
label define c_k2q15_lab  .m "No valid response", add
label define c_k2q15_lab  .n "Not in universe", add
label define c_k2q15_lab  .l "Logical skip", add
label define c_k2q15_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q15 c_k2q15_lab
label define c_k2q16_lab  1  "Yes"
label define c_k2q16_lab  2  "No", add
label define c_k2q16_lab  .m "No valid response", add
label define c_k2q16_lab  .n "Not in universe", add
label define c_k2q16_lab  .l "Logical skip", add
label define c_k2q16_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q16 c_k2q16_lab
label define c_k2q17_lab  1  "Yes"
label define c_k2q17_lab  2  "No", add
label define c_k2q17_lab  .m "No valid response", add
label define c_k2q17_lab  .n "Not in universe", add
label define c_k2q17_lab  .l "Logical skip", add
label define c_k2q17_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q17 c_k2q17_lab
label define c_k2q18_lab  1  "Yes"
label define c_k2q18_lab  2  "No", add
label define c_k2q18_lab  .m "No valid response", add
label define c_k2q18_lab  .n "Not in universe", add
label define c_k2q18_lab  .l "Logical skip", add
label define c_k2q18_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q18 c_k2q18_lab
label define c_k2q19_lab  1  "Yes"
label define c_k2q19_lab  2  "No", add
label define c_k2q19_lab  .m "No valid response", add
label define c_k2q19_lab  .n "Not in universe", add
label define c_k2q19_lab  .l "Logical skip", add
label define c_k2q19_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q19 c_k2q19_lab
label define c_k2q20_lab  1  "Yes"
label define c_k2q20_lab  2  "No", add
label define c_k2q20_lab  .m "No valid response", add
label define c_k2q20_lab  .n "Not in universe", add
label define c_k2q20_lab  .l "Logical skip", add
label define c_k2q20_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q20 c_k2q20_lab
label define c_k2q21_lab  1  "Yes"
label define c_k2q21_lab  2  "No", add
label define c_k2q21_lab  .m "No valid response", add
label define c_k2q21_lab  .n "Not in universe", add
label define c_k2q21_lab  .l "Logical skip", add
label define c_k2q21_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q21 c_k2q21_lab
label define c_k2q22_lab  1  "Yes"
label define c_k2q22_lab  2  "No", add
label define c_k2q22_lab  .m "No valid response", add
label define c_k2q22_lab  .n "Not in universe", add
label define c_k2q22_lab  .l "Logical skip", add
label define c_k2q22_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q22 c_k2q22_lab
label define c_k2q23_lab  1  "Yes"
label define c_k2q23_lab  2  "No", add
label define c_k2q23_lab  .m "No valid response", add
label define c_k2q23_lab  .n "Not in universe", add
label define c_k2q23_lab  .l "Logical skip", add
label define c_k2q23_lab  .d "Suppressed for confidentiality", add
cap label values c_k2q23 c_k2q23_lab
label define c_race_r_lab  1  "White alone"
label define c_race_r_lab  2  "Black or African American alone", add
label define c_race_r_lab  3  "American Indian or Alaska Native alone", add
label define c_race_r_lab  4  "Asian alone", add
label define c_race_r_lab  5  "Native Hawaiian and Other Pacific Islander alone", add
label define c_race_r_lab  7  "Two or More Races", add
label define c_race_r_lab  .m "No valid response", add
label define c_race_r_lab  .n "Not in universe", add
label define c_race_r_lab  .l "Logical skip", add
label define c_race_r_lab  .d "Suppressed for confidentiality", add
cap label values c_race_r c_race_r_lab
label define c_race_r_if_lab  1  "Imputed"
label define c_race_r_if_lab  0  "Not imputed", add
label define c_race_r_if_lab  .m "No valid response", add
label define c_race_r_if_lab  .n "Not in universe", add
label define c_race_r_if_lab  .l "Logical skip", add
label define c_race_r_if_lab  .d "Suppressed for confidentiality", add
cap label values c_race_r_if c_race_r_if_lab
label define c_sex_lab  1  "Male"
label define c_sex_lab  2  "Female", add
label define c_sex_lab  .m "No valid response", add
label define c_sex_lab  .n "Not in universe", add
label define c_sex_lab  .l "Logical skip", add
label define c_sex_lab  .d "Suppressed for confidentiality", add
cap label values c_sex c_sex_lab
label define c_sex_if_lab  1  "Imputed"
label define c_sex_if_lab  0  "Not imputed", add
label define c_sex_if_lab  .m "No valid response", add
label define c_sex_if_lab  .n "Not in universe", add
label define c_sex_if_lab  .l "Logical skip", add
label define c_sex_if_lab  .d "Suppressed for confidentiality", add
cap label values c_sex_if c_sex_if_lab
label define cbsafp_yn_lab  1  "Located within a CBSA"
label define cbsafp_yn_lab  2  "Located outside a CBSA", add
label define cbsafp_yn_lab  .m "No valid response", add
label define cbsafp_yn_lab  .n "Not in universe", add
label define cbsafp_yn_lab  .l "Logical skip", add
label define cbsafp_yn_lab  .d "Suppressed for confidentiality", add
cap label values cbsafp_yn cbsafp_yn_lab
label define fipsst_lab  .m "No valid response"
label define fipsst_lab  .n "Not in universe", add
label define fipsst_lab  .l "Logical skip", add
label define fipsst_lab  .d "Suppressed for confidentiality", add
cap label values fipsst fipsst_lab
label define fwh_lab  .m "No valid response"
label define fwh_lab  .n "Not in universe", add
label define fwh_lab  .l "Logical skip", add
label define fwh_lab  .d "Suppressed for confidentiality", add
cap label values fwh fwh_lab
label define hhids_lab  .m "No valid response"
label define hhids_lab  .n "Not in universe", add
label define hhids_lab  .l "Logical skip", add
label define hhids_lab  .d "Suppressed for confidentiality", add
cap label values hhids hhids_lab
label define hhlanguage_lab  1  "English"
label define hhlanguage_lab  2  "Spanish", add
label define hhlanguage_lab  3  "Other", add
label define hhlanguage_lab  .m "No valid response", add
label define hhlanguage_lab  .n "Not in universe", add
label define hhlanguage_lab  .l "Logical skip", add
label define hhlanguage_lab  .d "Suppressed for confidentiality", add
cap label values hhlanguage hhlanguage_lab
label define linenum_lab  .m "No valid response"
label define linenum_lab  .n "Not in universe", add
label define linenum_lab  .l "Logical skip", add
label define linenum_lab  .d "Suppressed for confidentiality", add
cap label values linenum linenum_lab
label define metro_yn_lab  1  "Metropolitan Statistical Area"
label define metro_yn_lab  2  "Not Metropolitan Statistical Area", add
label define metro_yn_lab  .m "No valid response", add
label define metro_yn_lab  .n "Not in universe", add
label define metro_yn_lab  .l "Logical skip", add
label define metro_yn_lab  .d "Suppressed for confidentiality", add
cap label values metro_yn metro_yn_lab
label define mpc_yn_lab  1  "Metropolitan Principal City"
label define mpc_yn_lab  2  "Not Metropolitan Principal City", add
label define mpc_yn_lab  .m "No valid response", add
label define mpc_yn_lab  .n "Not in universe", add
label define mpc_yn_lab  .l "Logical skip", add
label define mpc_yn_lab  .d "Suppressed for confidentiality", add
cap label values mpc_yn mpc_yn_lab
label define racer_lab  1  "White alone"
label define racer_lab  2  "Black or African American alone", add
label define racer_lab  3  "Other", add
label define racer_lab  .m "No valid response", add
label define racer_lab  .n "Not in universe", add
label define racer_lab  .l "Logical skip", add
label define racer_lab  .d "Suppressed for confidentiality", add
cap label values racer racer_lab
label define tenure_lab  1  "Owned by you or someone in this household with a mortgage or loan? Include home equity loans"
label define tenure_lab  2  "Owned by you or someone in this household free and clear (without a mortgage or loan)?", add
label define tenure_lab  3  "Rented?", add
label define tenure_lab  4  "Occupied without payment of rent?", add
label define tenure_lab  .m "No valid response", add
label define tenure_lab  .n "Not in universe", add
label define tenure_lab  .l "Logical skip", add
label define tenure_lab  .d "Suppressed for confidentiality", add
cap label values tenure tenure_lab
label define tenure_if_lab  1  "Imputed"
label define tenure_if_lab  0  "Not imputed", add
label define tenure_if_lab  .m "No valid response", add
label define tenure_if_lab  .n "Not in universe", add
label define tenure_if_lab  .l "Logical skip", add
label define tenure_if_lab  .d "Suppressed for confidentiality", add
cap label values tenure_if tenure_if_lab
label define totkids_r_lab  1  "1"
label define totkids_r_lab  2  "2", add
label define totkids_r_lab  3  "3", add
label define totkids_r_lab  4  "4+", add
label define totkids_r_lab  .m "No valid response", add
label define totkids_r_lab  .n "Not in universe", add
label define totkids_r_lab  .l "Logical skip", add
label define totkids_r_lab  .d "Suppressed for confidentiality", add
cap label values totkids_r totkids_r_lab
label define year_lab  .m "No valid response"
label define year_lab  .n "Not in universe", add
label define year_lab  .l "Logical skip", add
label define year_lab  .d "Suppressed for confidentiality", add
cap label values year year_lab
label define fipsst_lab 01 "Alabama", add
label define fipsst_lab 02 "Alaska", add
label define fipsst_lab 04 "Arizona", add
label define fipsst_lab 05 "Arkansas", add
label define fipsst_lab 06 "California", add
label define fipsst_lab 08 "Colorado", add
label define fipsst_lab 09 "Connecticut", add
label define fipsst_lab 10 "Delaware", add
label define fipsst_lab 11 "District of Columbia", add
label define fipsst_lab 12 "Florida", add
label define fipsst_lab 13 "Georgia", add
label define fipsst_lab 15 "Hawaii", add
label define fipsst_lab 16 "Idaho", add
label define fipsst_lab 17 "Illinois", add
label define fipsst_lab 18 "Indiana", add
label define fipsst_lab 19 "Iowa", add
label define fipsst_lab 20 "Kansas", add
label define fipsst_lab 21 "Kentucky", add
label define fipsst_lab 22 "Louisiana", add
label define fipsst_lab 23 "Maine", add
label define fipsst_lab 24 "Maryland", add
label define fipsst_lab 25 "Massachusetts", add
label define fipsst_lab 26 "Michigan", add
label define fipsst_lab 27 "Minnesota", add
label define fipsst_lab 28 "Mississippi", add
label define fipsst_lab 29 "Missouri", add
label define fipsst_lab 30 "Montana", add
label define fipsst_lab 31 "Nebraska", add
label define fipsst_lab 32 "Nevada", add
label define fipsst_lab 33 "New Hampshire", add
label define fipsst_lab 34 "New Jersey", add
label define fipsst_lab 35 "New Mexico", add
label define fipsst_lab 36 "New York", add
label define fipsst_lab 37 "North Carolina", add
label define fipsst_lab 38 "North Dakota", add
label define fipsst_lab 39 "Ohio", add
label define fipsst_lab 40 "Oklahoma", add
label define fipsst_lab 41 "Oregon", add
label define fipsst_lab 42 "Pennsylvania", add
label define fipsst_lab 44 "Rhode Island", add
label define fipsst_lab 45 "South Carolina", add
label define fipsst_lab 46 "South Dakota", add
label define fipsst_lab 47 "Tennessee", add
label define fipsst_lab 48 "Texas", add
label define fipsst_lab 49 "Utah", add
label define fipsst_lab 50 "Vermont", add
label define fipsst_lab 51 "Virginia", add
label define fipsst_lab 53 "Washington", add
label define fipsst_lab 54 "West Virginia", add
label define fipsst_lab 55 "Wisconsin", add
label define fipsst_lab 56 "Wyoming", add
cap label values fipsst fipsst_lab