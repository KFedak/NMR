#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('data/input/ASmokingCessationTri_DATA_2019-12-05_1313.csv')
#Setting Labels

label(data$pid)="Study ID    RCT"
label(data$redcap_event_name)="Event Name"
label(data$rct_arm)="Group Assignment"
label(data$enrolldate)="Date of Enrollment"
label(data$sex)="1. Gender"
label(data$age)="2. Age"
label(data$race)="3. Race"
label(data$education)="4. Highest level of school completed"
label(data$employ)="5. Employment status"
label(data$disability)="6. Disability Grants"
label(data$perincome)="7. What is your personal income per month?"
label(data$hhincome)="8. What is your total family income per month?"
label(data$currliving)="9. Current Living Situation"
label(data$numliving)="10. Number of people in living situation"
label(data$numroom)="11. Number of rooms (excluding bathrooms) in living situation"
label(data$tv)="12. Do you have a TV in your house?"
label(data$car)="13. Do you have a car or bakkie that you can use all the time?"
label(data$toilet)="14. Do you have a flush toilet inside the house?"
label(data$mobile)="15. Do you have a mobile phone for yourself?"
label(data$sms)="15a. Can you receive text messages on your mobile phone?"
label(data$smartphone)="15b. Is your mobile phone a smartphone (it has Android or iOS and can download applications)?"
label(data$agesmoke)="1. How old were you when you first started regular cigarette smoking?"
label(data$numcig)="2. How many cigarettes do you smoke per day or on the days that you smoke?"
label(data$lastsmoke)="3-a. When was the last time you smoked any tobacco products? (NUMERICAL VALUE)"
label(data$lastsmokeunits)="3-b. When was the last time you smoked any tobacco products? (UNITS)"
label(data$wakesmoke)="4-a. How soon after you wake up do you usually have your first smoke? (NUMERICAL VALUE)"
label(data$wakesmokeunits)="4-b. (UNITS)"
label(data$motivation)="5. How motivated are you to stop smoking? "
label(data$triedtostop)="6. Have you tried to stop smoking in the past year?"
label(data$reasonstop___1)="7. If you tried stopping in the past year, what made you try? (choice=Wanted to quit)"
label(data$reasonstop___2)="7. If you tried stopping in the past year, what made you try? (choice=Increasing cough)"
label(data$reasonstop___3)="7. If you tried stopping in the past year, what made you try? (choice=TB diagnosis)"
label(data$reasonstop___4)="7. If you tried stopping in the past year, what made you try? (choice=Doctors suggestion)"
label(data$reasonstop___7)="7. If you tried stopping in the past year, what made you try? (choice=Other)"
label(data$cigsbeforestop)="8. Just before you tried to stop, on average, how many cigarettes were you smoking each day?"
label(data$methodstop___1)="9. What methods did you use to try to stop smoking?  (choice=Counseling)"
label(data$methodstop___2)="9. What methods did you use to try to stop smoking?  (choice=Support Group)"
label(data$methodstop___3)="9. What methods did you use to try to stop smoking?  (choice=Nicotine replacement (patch))"
label(data$methodstop___4)="9. What methods did you use to try to stop smoking?  (choice=Nicotine replacement (gum))"
label(data$methodstop___5)="9. What methods did you use to try to stop smoking?  (choice=Written materials)"
label(data$methodstop___6)="9. What methods did you use to try to stop smoking?  (choice=Prescription medications)"
label(data$methodstop___7)="9. What methods did you use to try to stop smoking?  (choice=Other)"
label(data$methodstop___0)="9. What methods did you use to try to stop smoking?  (choice=None of the above (stopped without help))"
label(data$dagga)="10. Have you ever smoked dagga, marijuana, or matekwane?"
label(data$daggaoften)="10a. If you have smoked dagga, marijuana, or matekwane, how often do you smoke it?"
label(data$daggamany)="10b. How many dagga cigarettes do you smoke per week?"
label(data$snuffnotoften)="11-a. How many times per day do you use snuff or snus?"
label(data$snuffoften)="11-b. How many times per day do you use snuff or snus?"
label(data$smokelessnotoften)="12-a. How many times per day do you use smokeless tobacco? "
label(data$smokelessoften)="12-b. How many times per day do you use smokeless tobacco? For example, chewing tobacco or electronic cigarettes."
label(data$pipesnotoften)="13-a. How many times per day do you use pipes?"
label(data$pipesoften)="13-b. How many times per day do you use pipes?"
label(data$cigarsnotoften)="14-a. How many times per day do you use cigars?"
label(data$cigarsoften)="14-b. How many times per day do you use cigars?"
label(data$kreteksnotoften)="15-a. How many times per day do you use kreteks or clove cigarettes? "
label(data$kreteksoften)="15-b. How many times per day do you use kreteks or clove cigarettes? "
label(data$hookahnotoften)="16-a. How many times per day do you use water pipes, called hookah or hubbly bubbly?"
label(data$hookahoften)="16-b. How many times per day do you use water pipes, called hookah or hubbly bubbly?"
label(data$manufacturednotoften)="17-a. How many times per day do you use manufactured cigarettes? "
label(data$manufacturedoften)="17-b. How many times per day do you use manufactured cigarettes? "
label(data$handrollednotoften)="18-a. How many times per day do you use hand-rolled cigarettes (rizla)?"
label(data$handrolledoften)="18-b. How many times per day do you use hand-rolled cigarettes (rizla)?"
label(data$othernotoften)="19-a. How many times per day do you use some other type of tobacco product not listed above?"
label(data$otheroften)="19-b. How many times per day do you use some other type of tobacco product not listed above?"
label(data$getcigs___1)="1. How do you get the cigarettes / tobacco products you use? (choice=I buy for myself)"
label(data$getcigs___2)="1. How do you get the cigarettes / tobacco products you use? (choice=Someone else in household buys (example: spouse))"
label(data$getcigs___3)="1. How do you get the cigarettes / tobacco products you use? (choice=Someone else in workplace buys (example: co-worker))"
label(data$getcigs___4)="1. How do you get the cigarettes / tobacco products you use? (choice=Someone else outside of workplace buys (example: friend))"
label(data$getcigs___7)="1. How do you get the cigarettes / tobacco products you use? (choice=Other)"
label(data$buymyselfcigs___1)="1a. How do you buy cigarettes when you buy them?  (choice=Individual cigarettes)"
label(data$buymyselfcigs___2)="1a. How do you buy cigarettes when you buy them?  (choice=Packs)"
label(data$buymyselfcigs___3)="1a. How do you buy cigarettes when you buy them?  (choice=Cartons)"
label(data$buymyselfcigs___7)="1a. How do you buy cigarettes when you buy them?  (choice=Other)"
label(data$cigsobtain___1)="2. Where do the cigarettes you use come from?  (choice=Shops (e.g. Pick-N-Pay))"
label(data$cigsobtain___2)="2. Where do the cigarettes you use come from?  (choice=Carts)"
label(data$cigsobtain___7)="2. Where do the cigarettes you use come from?  (choice=Other)"
label(data$paycigs)="3. How much do you pay for cigarettes / tobacco products in a week? "
label(data$smokeexposurework)="1. At your job are/were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$smokeexposureworkhour)="1a. In the past 12 months, for how many hours per day, on average, are you at work while someone other than yourself is smoking there?"
label(data$smokeexposurehome)="2. In the past 12 months have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$smokeexposureworkhomehours)="2a. In the past 12 months, for how many hours per day, on average, are you at home while someone other than yourself is smoking there?"
label(data$livedsmoker)="3. Have you ever lived with a regular cigarette smoker who smoked inside the house?"
label(data$mother)="4. Mother smoked inside the house?"
label(data$father)="5. Father smoked inside the house?"
label(data$otherlived)="6. Other people smoked inside the house?"
label(data$numotherlived)="7. How many other people smoked inside the house?"
label(data$yearssmokerlived)="8. How many years did you live with a regular cigarette smoker who smoked inside the house?"
label(data$cookfuel)="9. What fuel do you use for cooking at your home?"
label(data$cookinhome)="10. Where is cooking done at your house?"
label(data$heatfuel)="11. What fuel do you use for heating your house when it is cold?"
label(data$mbawula)="12. Do you use a mbawula (indoor open coal stove in a 20 liter tin)?"
label(data$curralcohol)="1. Do you currently drink alcohol?"
label(data$lessweeklydrink)="2. How many drinks a week do you currently drink? "
label(data$alcoholnum)="2. How many drinks a week do you currently drink?"
label(data$agedrinking)="3. Age started drinking? "
label(data$cage1)="4. Have you ever felt you should cut down on your drinking?"
label(data$cage2)="5. Have people annoyed you by criticizing your drinking?"
label(data$cage3)="6. Have you ever felt bad or guilty about your drinking?"
label(data$cage4)="7. Have you ever had a drink first thing in the morning to steady your nerves or to get rid of a hangover (eye opener)?"
label(data$prison)="1. Have you ever been in prison?"
label(data$currhomeless)="2. Are you currently homeless?"
label(data$shltr)="2a. Have you ever been homeless?"
label(data$currmine)="3. Are you currently working underground in a mine?"
label(data$mineyearsless)="3a. How many years have you been working at this mine where you are currently employed? "
label(data$mineyears)="3a. How many years have you been working at this mine where you are currently employed? "
label(data$mine)="4. Have you ever worked underground in a mine?"
label(data$mineyearsnumless)="4a. How many years did you work in a mine?"
label(data$mineyearsnum)="4a. How many years did you work in a mine?"
label(data$cough)="1. Do you currently have a cough? (Exclude clearing of throat)"
label(data$coughlong)="1a. If yes, how long have you been coughing? (NUMERICAL VALUE)"
label(data$coughlongunits)="1a. If yes, how long have you been coughing? (UNITS)"
label(data$coughspu)="2. Do you cough up sputum?"
label(data$coughspulong)="2a. If yes, how long have you been coughing up sputum? (NUMERICAL VALUE)"
label(data$coughspuunits)="2a. If yes, how long have you been coughing up sputum? (UNITS)"
label(data$coughblood)="3. Do you ever cough up blood?"
label(data$coughbloodlong)="3a. If yes, how long have you been coughing up blood? (NUMERICAL VALUE)"
label(data$coughbloodunits)="3a. If yes, how long have you been coughing up blood? (UNITS)"
label(data$weightloss)="4. Are you losing weight?"
label(data$weightlosslong)="4a. If yes, for how long have you been losing weight?  (NUMERICAL VALUE)"
label(data$weightlossunits)="4a. If yes, how long have you been losing weight? (UNITS)"
label(data$asthma)="5. Do you have asthma? Or have you been given a small pump by a doctor for a chest problem?"
label(data$asthmalong)="5a. For how long have you had asthma? (NUMERICAL VALUE)"
label(data$asthmaunits)="5a. For how long have you had asthma? (UNITS)"
label(data$mirisk)="1. Do you think your risk of having a heart attack is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$strokerisk)="2. Do you think your risk of having a stroke is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$cigcancer)="3. Cigarettes still have not been proven to cause cancer."
label(data$cigs5cancer)="4. If a person smokes only 5 cigarettes per day, their chances of getting cancer from smoking are about the same as someone who never smokes."
label(data$ciglungs)="5. Cigarette smoking only affects the lungs, and not other organs."
label(data$cigco)="6. Cigarette smoke contains carbon monoxide."
label(data$cignh3)="7. Cigarette smoke contains ammonia."
label(data$cigadd)="8. Cigarettes with additives are more harmful than the ones that dont have additives."
label(data$niccancer)="9. Nicotine causes cancer"
label(data$nicpatchmi)="10. Nicotine patches are just as likely to cause someone to have a heart attack as cigarettes."
label(data$nicurge)="11. Nicotine medications (patch, gum) work by completely eliminating the urge to smoke."
label(data$nicsick)="12. Nicotine medications work by making you physically sick if you take them and smoke at the same time."
label(data$nicquit)="13. Nicotine medications like the patch and gum improve a smokers chances of quitting successfully. "
label(data$food)="1. Food is not particularly appealing to me."
label(data$sleep)="2. I am getting restful sleep."
label(data$tense)="3. I have been tense or anxious."
label(data$conc)="4. My level of concentration is excellent."
label(data$poorsleep)="5. I awaken from sleep frequently during the night."
label(data$impt)="6. I have felt impatient."
label(data$upbt)="7. I have felt upbeat and optimistic."
label(data$worry)="8. I have found myself worrying about my problems."
label(data$smkurges)="9. I have had frequent urges to smoke."
label(data$calm)="10. I have felt calm lately."
label(data$smkbthr)="11. I have been bothered by the desire to smoke cigarettes."
label(data$sad)="12. I have felt sad or depressed."
label(data$anger)="13. I have been irritable, easily angered."
label(data$snacks)="14. I want to nibble on snacks or sweets."
label(data$negmoods)="15. I have been bothered by negative moods such as anger, frustration, and irritability."
label(data$eatalot)="16. I have been eating a lot."
label(data$satsleep)="17. I am satisfied with my sleep."
label(data$frust)="18. I have felt frustrated."
label(data$hopels)="19. I have felt hopeless or discouraged."
label(data$smkthnk)="20. I have thought about smoking a lot."
label(data$hngry)="21. I have felt hungry."
label(data$enghsleep)="22. I feel that I am getting enough sleep."
label(data$attn)="23. Its hard to pay attention to things."
label(data$happy)="24. I have felt happy and content."
label(data$sleeptrbl)="25. My sleep has been troubled."
label(data$cigthnk)="26. I have trouble getting cigarettes off my mind."
label(data$thnkclr)="27. It has been difficult to think clearly."
label(data$thnkfood)="28. I think about food a lot."
label(data$meds___1)="1. Are you on medication for any of the following? (choice=Diabetes (insulin))"
label(data$meds___2)="1. Are you on medication for any of the following? (choice=High blood pressure)"
label(data$meds___3)="1. Are you on medication for any of the following? (choice=Heart disease)"
label(data$meds___4)="1. Are you on medication for any of the following? (choice=Anti-depressants)"
label(data$meds___5)="1. Are you on medication for any of the following? (choice=Sleeping pills)"
label(data$meds___6)="1. Are you on medication for any of the following? (choice=None of the above)"
label(data$tbtx)="2. Are you on treatment for TB?"
label(data$tbtxmonth)="2a. When did you start treatment for TB? (MONTH)"
label(data$tbtxyear)="2a. When did you start treatment for TB? (YEAR)"
label(data$haart_enroll)="3. Are you on HAART?"
label(data$waist)="1. Waist measurement in cm (measured today)"
label(data$hip)="2. Hip measurement in cm (measured today)"
label(data$height)="3. Height in cm"
label(data$dtcomp)="Date interview conducted"
label(data$enrollment_form_complete)="Complete?"
label(data$coppm_baseline)="Carbon monoxide measurement COppm    __ __"
label(data$cohb_baseline)="Carbon monoxide measurement %COHb    __ __ . __"
label(data$cotinine_baseline)="Smokescreen Analyzer result    __ __ . __  (enter 99.9 if invalid is checked)"
label(data$cotinine_reading)="Smokescreen baseline reading"
label(data$randomisation_complete)="Complete?"
label(data$hiv_date_value)="1. HIV-positive diagnosis date"
label(data$hiv_date)="1-MONTH. HIV-positive diagnosis date  "
label(data$hiv_date2_d6b)="1-YEAR. HIV-positive diagnosis date"
label(data$haart_value)="2. HAART start date"
label(data$haart_month)="2-MONTH. HAART start date"
label(data$haart_year)="2-YEAR. HAART start date"
label(data$haart_meds___1)="2a. HAART medications (choice=AZT)"
label(data$haart_meds___2)="2a. HAART medications (choice=EFV)"
label(data$haart_meds___3)="2a. HAART medications (choice=3TC)"
label(data$haart_meds___4)="2a. HAART medications (choice=TDF)"
label(data$haart_meds___5)="2a. HAART medications (choice=NVP)"
label(data$haart_meds___6)="2a. HAART medications (choice=D4T)"
label(data$haart_meds___7)="2a. HAART medications (choice=Aluvia)"
label(data$haart_meds___8)="2a. HAART medications (choice=LPV)"
label(data$haart_meds___9)="2a. HAART medications (choice=FDC)"
label(data$haart_meds___10)="2a. HAART medications (choice=ABC)"
label(data$haart_meds___77)="2a. HAART medications (choice=Other)"
label(data$cd4_value)="3. Most recent CD4 count"
label(data$cd4)="3. CD4 cells/mm3"
label(data$cd4_date_value)="3a. Date of CD4 count"
label(data$cd4_month)="3a-MONTH. Date of CD4 count"
label(data$cd4_year)="3a-YEAR. Date of CD4 count"
label(data$vl_value)="4. Most recent viral load"
label(data$vl)="4. Most recent viral load"
label(data$vl_date_value)="4a. Date of viral load "
label(data$vl_month)="4a-MONTH. Date of viral load"
label(data$vl_year)="4a-YEAR. Date of viral load"
label(data$tbtxdate_value)="5. TB treatment start date "
label(data$tbtx_day)="5-DAY. TB treatment start date"
label(data$tbtx_month)="5-MONTH. TB treatment start date"
label(data$tbtx_year)="5-YEAR. TB treatment start date"
label(data$data_date)="Date of abstraction"
label(data$data_abstraction_complete)="Complete?"
label(data$y_2wk)="What form are you data entering?"
label(data$missdate_2wk)="Date of CRF completion"
label(data$date_2wk)="Date of Visit"
label(data$cardiac_2wk)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_2wk)="2. Since your last visit, have you had a stroke?"
label(data$unstable_2wk)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_2wk)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_2wk)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$bpatch_2wk)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_2wk)="6. Since your last visit, has your employment status changed?"
label(data$empstatus_2wk)="6a. Employment status"
label(data$livechange_2wk)="7. Since your last visit, has your current living situation changed?"
label(data$currlive_2wk)="7a. Current Living Situation"
label(data$prison_2wk)="8. Since your last visit, have you been in prison?"
label(data$homeless_2wk)="9. Since your last visit, have you been homeless?"
label(data$mine_2wk)="10. Since your last visit, have you worked in a mine?"
label(data$tb_2wk)="11. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_2wk)="11a. (MONTH) When were you diagnosed with TB?"
label(data$tbtreat_2wk)="11b. When did you start treatment for TB?"
label(data$txmonth_2wk)="11b. (MONTH) When did you start treatment for TB?"
label(data$hhtb_2wk)="12. Since your last visit, has anyone in  your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_2wk)="12a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$worksmoke_2wk)="13. Since your last visit, were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$livewithsmoker_2wk)="14. Since your last visit, have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$stillsmoke_2wk)="15. Are you still smoking cigarettes today or have you smoked within the last 7 days?"
label(data$lastcignum_2wk)="15a. If Yes, how long ago was your last cigarette?"
label(data$lastcigunits_2wk)="15a. (units)"
label(data$motivated_2wk)="15b. If Yes, how motivated are you to stop smoking?"
label(data$sincestopsmokenum_2wk)="16. How long has it been since you stopped smoking?"
label(data$sincestopsmokeunits_2wk)="16. (units)"
label(data$reasons_2wk___1)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Felt sick)"
label(data$reasons_2wk___2)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To improve my health)"
label(data$reasons_2wk___3)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To save money)"
label(data$reasons_2wk___4)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Influence from family/friends)"
label(data$reasons_2wk___5)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Counseling during study visit)"
label(data$reasons_2wk___7)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Other)"
label(data$methodstop_2wk___1)="18. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_2wk___2)="18. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_2wk___3)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_2wk___4)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_2wk___5)="18. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_2wk___6)="18. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_2wk___7)="18. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_2wk___0)="18. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_2wk)="19. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_2wk)="19a. How many did you use per day?"
label(data$patchtimeused_2wk)="19b. How long did you use it for?"
label(data$gum_2wk)="20. Since your last visit, have you used any nicotine gum?"
label(data$gumtimeused_2wk)="20b. How long did you use it for?"
label(data$withdraw1_2wk)="21. Food is not particularly appealing to me."
label(data$withdraw2_2wk)="22. I am getting restful sleep."
label(data$withdraw3_2wk)="23. I have been tense or anxious."
label(data$withdraw4_2wk)="24. My level of concentration is excellent."
label(data$withdraw5_2wk)="25. I awaken from sleep frequently during the night."
label(data$withdraw6_2wk)="26. I have felt impatient."
label(data$withdraw7_2wk)="27. I have felt upbeat and optimistic."
label(data$withdraw8_2wk)="28. I have found myself worrying about my problems."
label(data$withdraw9_2wk)="29. I have had frequent urges to smoke."
label(data$withdraw10_2wk)="30. I have felt calm lately."
label(data$withdraw11_2wk)="31. I have been bothered by the desire to smoke cigarettes."
label(data$withdraw12_2wk)="32. I have felt sad or depressed."
label(data$withdraw13_2wk)="33. I have been irritable, easily angered."
label(data$withdraw14_2wk)="34. I want to nibble on snacks or sweets."
label(data$withdraw15_2wk)="35. I have been bothered by negative moods such as anger, frustration, and irritability."
label(data$withdraw16_2wk)="36. I have been eating a lot."
label(data$withdraw17_2wk)="37. I am satisfied with my sleep."
label(data$withdraw18_2wk)="38. I have felt frustrated."
label(data$withdraw19_2wk)="39. I have felt hopeless or discouraged."
label(data$withdraw20_2wk)="40. I have thought about smoking a lot."
label(data$withdraw21_2wk)="41. I have felt hungry."
label(data$withdraw22_2wk)="42. I feel that I am getting enough sleep."
label(data$withdraw23_2wk)="43. Its hard to pay attention to things."
label(data$withdraw24_2wk)="44. I have felt happy and content."
label(data$withdraw25_2wk)="45. My sleep has been troubled."
label(data$withdraw26_2wk)="46. I have trouble getting cigarettes off my mind."
label(data$withdraw27_2wk)="47. It has been difficult to think clearly."
label(data$withdraw28_2wk)="48. I think about food a lot."
label(data$haart_2wk)="49. Are you currently taking HIV medications?"
label(data$haartregular_2wk)="49a. Do you take your HIV medications regularly?"
label(data$haartadhere_2wk)="49b. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$dateinterview_2wk)="Date interview conducted"
label(data$week_followup_visit_complete)="Complete?"
label(data$y_1mo)="What form are you data entering?"
label(data$missdate_1mo)="Date of CRF completion"
label(data$date_1mo)="Date of Visit"
label(data$cardiac_1mo)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_1mo)="2. Since your last visit, have you had a stroke?"
label(data$unstable_1mo)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_1mo)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_1mo)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$pregnantpatch_1mo)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_1mo)="6. Since your last visit, has your employment status changed?"
label(data$empstatus_1mo)="6a. Employment status"
label(data$livechange_1mo)="7. Since your last visit, has your current living situation changed?"
label(data$currlive_1mo)="7a. Current Living Situation"
label(data$prison_1mo)="8. Since your last visit, have you been in prison?"
label(data$homeless_1mo)="9. Since your last visit, have you been homeless?"
label(data$mine_1mo)="10. Since your last visit, have you worked in a mine?"
label(data$tb_1mo)="11. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_1mo)="11a. (MONTH) When were you diagnosed with TB?"
label(data$tbtreat_1mo)="11b. When did you start treatment for TB?"
label(data$txmonth_1mo)="11b. (MONTH) When did you start treatment for TB?"
label(data$hhtb_1mo)="12. Since your last visit, has anyone in  your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_1mo)="12a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$worksmoke_1mo)="13. Since your last visit, were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$livewithsmoker_1mo)="14. Since your last visit, have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$stillsmoke_1mo)="15. Are you still smoking cigarettes today or have you smoked within the last 7 days?"
label(data$lastcignum_1mo)="15a. If Yes, how long ago was your last cigarette?"
label(data$lastcigunits_1mo)="15a. (units)"
label(data$motivated_1mo)="15b. If Yes, how motivated are you to stop smoking?"
label(data$sincestopsmokenum_1mo)="16. How long has it been since you stopped smoking?"
label(data$sincestopsmokeunits_1mo)="16. (units)"
label(data$reasons_1mo___1)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Felt sick)"
label(data$reasons_1mo___2)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To improve my health)"
label(data$reasons_1mo___3)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To save money)"
label(data$reasons_1mo___4)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Influence from family/friends)"
label(data$reasons_1mo___5)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Counseling during study visit)"
label(data$reasons_1mo___7)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Other)"
label(data$methodstop_1mo___1)="18. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_1mo___2)="18. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_1mo___3)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_1mo___4)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_1mo___5)="18. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_1mo___6)="18. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_1mo___7)="18. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_1mo___0)="18. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_1mo)="19. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_1mo)="19a. How many did you use per day?"
label(data$patchtimeused_1mo)="19b. How long did you use it for?"
label(data$gum_1mo)="20. Since your last visit, have you used any nicotine gum?"
label(data$gumtimeused_1mo)="20b. How long did you use it for?"
label(data$withdraw1_1mo)="21. Food is not particularly appealing to me."
label(data$withdraw2_1mo)="22. I am getting restful sleep."
label(data$withdraw3_1mo)="23. I have been tense or anxious."
label(data$withdraw4_1mo)="24. My level of concentration is excellent."
label(data$withdraw5_1mo)="25. I awaken from sleep frequently during the night."
label(data$withdraw6_1mo)="26. I have felt impatient."
label(data$withdraw7_1mo)="27. I have felt upbeat and optimistic."
label(data$withdraw8_1mo)="28. I have found myself worrying about my problems."
label(data$withdraw9_1mo)="29. I have had frequent urges to smoke."
label(data$withdraw10_1mo)="30. I have felt calm lately."
label(data$withdraw11_1mo)="31. I have been bothered by the desire to smoke cigarettes."
label(data$withdraw12_1mo)="32. I have felt sad or depressed."
label(data$withdraw13_1mo)="33. I have been irritable, easily angered."
label(data$withdraw14_1mo)="34. I want to nibble on snacks or sweets."
label(data$withdraw15_1mo)="35. I have been bothered by negative moods such as anger, frustration, and irritability."
label(data$withdraw16_1mo)="36. I have been eating a lot."
label(data$withdraw17_1mo)="37. I am satisfied with my sleep."
label(data$withdraw18_1mo)="38. I have felt frustrated."
label(data$withdraw19_1mo)="39. I have felt hopeless or discouraged."
label(data$withdraw20_1mo)="40. I have thought about smoking a lot."
label(data$withdraw21_1mo)="41. I have felt hungry."
label(data$withdraw22_1mo)="42. I feel that I am getting enough sleep."
label(data$withdraw23_1mo)="43. Its hard to pay attention to things."
label(data$withdraw24_1mo)="44. I have felt happy and content."
label(data$withdraw25_1mo)="45. My sleep has been troubled."
label(data$withdraw26_1mo)="46. I have trouble getting cigarettes off my mind."
label(data$withdraw27_1mo)="47. It has been difficult to think clearly."
label(data$withdraw28_1mo)="48. I think about food a lot."
label(data$haart_1mo)="49. Are you currently taking HIV medications?"
label(data$haartregular_1mo)="49a. Do you take your HIV medications regularly?"
label(data$haartadhere_1mo)="49b. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$dateinterview_1mo)="Date interview conducted"
label(data$month_followup_visit_1month_complete)="Complete?"
label(data$y_2mo)="What form are you data entering?"
label(data$missdate_2mo)="Date of CRF completion"
label(data$date_2mo)="Date of Visit"
label(data$cardiac_2mo)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_2mo)="2. Since your last visit, have you had a stroke?"
label(data$unstable_2mo)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_2mo)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_2mo)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$pregnantpatch_2mo)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_2mo)="6. Since your last visit, has your employment status changed?"
label(data$empstatus_2mo)="6a. Employment status"
label(data$livechange_2mo)="7. Since your last visit, has your current living situation changed?"
label(data$currlive_2mo)="7a. Current Living Situation"
label(data$prison_2mo)="8. Since your last visit, have you been in prison?"
label(data$homeless_2mo)="9. Since your last visit, have you been homeless?"
label(data$mine_2mo)="10. Since your last visit, have you worked in a mine?"
label(data$tb_2mo)="11. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_2mo)="11a. (MONTH) When were you diagnosed with TB?"
label(data$tbtreat_2mo)="11b. When did you start treatment for TB?"
label(data$txmonth_2mo)="11b. (MONTH) When did you start treatment for TB?"
label(data$hhtb_2mo)="12. Since your last visit, has anyone in  your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_2mo)="12a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$worksmoke_2mo)="13. Since your last visit, were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$livewithsmoker_2mo)="14. Since your last visit, have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$stillsmoke_2mo)="15. Are you still smoking cigarettes today or have you smoked within the last 7 days?"
label(data$lastcignum_2mo)="15a. If Yes, how long ago was your last cigarette?"
label(data$lastcigunits_2mo)="15a. (units)"
label(data$motivated_2mo)="15b. If Yes, how motivated are you to stop smoking?"
label(data$sincestopsmokenum_2mo)="16. How long has it been since you stopped smoking?"
label(data$sincestopsmokeunits_2mo)="16. (units)"
label(data$reasons_2mo___1)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Felt sick)"
label(data$reasons_2mo___2)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To improve my health)"
label(data$reasons_2mo___3)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=To save money)"
label(data$reasons_2mo___4)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Influence from family/friends)"
label(data$reasons_2mo___5)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Counseling during study visit)"
label(data$reasons_2mo___7)="17. What are the main reasons you stopped (or are trying to stop) smoking?  (choice=Other)"
label(data$methodstop_2mo___1)="18. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_2mo___2)="18. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_2mo___3)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_2mo___4)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_2mo___5)="18. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_2mo___6)="18. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_2mo___7)="18. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_2mo___0)="18. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_2mo)="19. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_2mo)="19a. How many did you use per day?"
label(data$patchtimeused_2mo)="19b. How long did you use it for?"
label(data$gum_2mo)="20. Since your last visit, have you used any nicotine gum?"
label(data$gumtimeused_2mo)="20b. How long did you use it for?"
label(data$withdraw1_2mo)="21. Food is not particularly appealing to me."
label(data$withdraw2_2mo)="22. I am getting restful sleep."
label(data$withdraw3_2mo)="23. I have been tense or anxious."
label(data$withdraw4_2mo)="24. My level of concentration is excellent."
label(data$withdraw5_2mo)="25. I awaken from sleep frequently during the night."
label(data$withdraw6_2mo)="26. I have felt impatient."
label(data$withdraw7_2mo)="27. I have felt upbeat and optimistic."
label(data$withdraw8_2mo)="28. I have found myself worrying about my problems."
label(data$withdraw9_2mo)="29. I have had frequent urges to smoke."
label(data$withdraw10_2mo)="30. I have felt calm lately."
label(data$withdraw11_2mo)="31. I have been bothered by the desire to smoke cigarettes."
label(data$withdraw12_2mo)="32. I have felt sad or depressed."
label(data$withdraw13_2mo)="33. I have been irritable, easily angered."
label(data$withdraw14_2mo)="34. I want to nibble on snacks or sweets."
label(data$withdraw15_2mo)="35. I have been bothered by negative moods such as anger, frustration, and irritability."
label(data$withdraw16_2mo)="36. I have been eating a lot."
label(data$withdraw17_2mo)="37. I am satisfied with my sleep."
label(data$withdraw18_2mo)="38. I have felt frustrated."
label(data$withdraw19_2mo)="39. I have felt hopeless or discouraged."
label(data$withdraw20_2mo)="40. I have thought about smoking a lot."
label(data$withdraw21_2mo)="41. I have felt hungry."
label(data$withdraw22_2mo)="42. I feel that I am getting enough sleep."
label(data$withdraw23_2mo)="43. Its hard to pay attention to things."
label(data$withdraw24_2mo)="44. I have felt happy and content."
label(data$withdraw25_2mo)="45. My sleep has been troubled."
label(data$withdraw26_2mo)="46. I have trouble getting cigarettes off my mind."
label(data$withdraw27_2mo)="47. It has been difficult to think clearly."
label(data$withdraw28_2mo)="48. I think about food a lot."
label(data$haart_2mo)="49. Are you currently taking HIV medications?"
label(data$haartregular_2mo)="49a. Do you take your HIV medications regularly?"
label(data$haartadhere_2mo)="49b. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$cohb_2mo)="Carbon monoxide measurement (%COHb)"
label(data$cotininevalue_2mo)="Smokescreen value?"
label(data$cotinine_2mo)="Smokescreen measurement"
label(data$cotinine_reading_2mo)="Smokescreen reading"
label(data$nicalert_2mo)="NicAlert reading"
label(data$hip_2mo)="53. Hip measurement in cm"
label(data$dateinterview_2mo)="Date interview conducted"
label(data$month_followup_visit_2month_complete)="Complete?"
label(data$y_3mo)="What form are you data entering?"
label(data$missdate_3mo)="Date of CRF completion"
label(data$date_3mo)="Date of Visit"
label(data$cardiac_3mo)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_3mo)="2. Since your last visit, have you had a stroke?"
label(data$unstable_3mo)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_3mo)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_3mo)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$pregnantpatch_3mo)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_3mo)="6. Since your last visit, has your employment status changed?"
label(data$empstatus_3mo)="6a. Employment status"
label(data$livechange_3mo)="7. Since your last visit, has your current living situation changed?"
label(data$currliv_3mo)="7a. Current Living Situation"
label(data$prison_3mo)="8. Since your last visit, have you been in prison?"
label(data$homeless_3mo)="9. Since your last visit, have you been homeless?"
label(data$mine_3mo)="10. Since your last visit, have you worked in a mine?"
label(data$tb_3mo)="11. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_3mo)="11a. (MONTH) When were you diagnosed with TB?"
label(data$tbyear_3mo)="11a. (YEAR) When were you diagnosed with TB?"
label(data$tbtreat_3mo)="11b. When did you start treatment for TB?"
label(data$txmonth_3mo)="11b. (MONTH) When did you start treatment for TB?"
label(data$txyear_3mo)="11b. (YEAR) When did you start treatment for TB?"
label(data$hhtb_3mo)="12. Since your last visit, has anyone in your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_3mo)="12a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$hhtbyear_3mo)="12a. (YEAR) When was a person in your house diagnosed with TB?"
label(data$worksmoke_3mo)="13. Since your last visit, were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$livewithsmoker_3mo)="14. Since your last visit, have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$stillsmoke_3mo)="15. Are you still smoking cigarettes today or have you smoked within the last 7 days?"
label(data$lastcignum_3mo)="15a. If Yes, how long ago was your last cigarette?"
label(data$lastcigunits_3mo)="15a. (units)"
label(data$motivated_3mo)="15b. If Yes, how motivated are you to stop smoking?"
label(data$sincestopsmokeunits_3mo)="16. (units)"
label(data$reasons_3mo___1)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Felt sick)"
label(data$reasons_3mo___2)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To improve my health)"
label(data$reasons_3mo___3)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To save money)"
label(data$reasons_3mo___4)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Influence from family/friends)"
label(data$reasons_3mo___5)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Counseling during study visit)"
label(data$reasons_3mo___7)="17. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Other)"
label(data$methodstop_3mo___1)="18. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_3mo___2)="18. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_3mo___3)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_3mo___4)="18. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_3mo___5)="18. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_3mo___6)="18. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_3mo___7)="18. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_3mo___0)="18. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_3mo)="19. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_3mo)="19a. How many did you use per day?"
label(data$patchtimeused_3mo)="19b. How long did you use it for?"
label(data$gum_3mo)="20. Since your last visit, have you used any nicotine gum?"
label(data$gumnum_3mo)="20a. How many did you use per day?"
label(data$gumtimeused_3mo)="20b. How long did you use it for?"
label(data$withdraw1_3mo)="21. Food is not particularly appealing to me"
label(data$withdraw2_3mo)="22. I am getting restful sleep."
label(data$withdraw3_3mo)="23. I have been tense or anxious"
label(data$withdraw4_3mo)="24. My level of concentration is excellent"
label(data$withdraw5_3mo)="25. I awaken from sleep frequently during the night."
label(data$withdraw6_3mo)="26. I have felt impatient."
label(data$withdraw7_3mo)="27. I have felt upbeat and optimistic."
label(data$withdraw8_3mo)="28. I have found myself worrying about my problems."
label(data$withdraw9_3mo)="29. I have had frequent urges to smoke."
label(data$withdraw10_3mo)="30. I have felt calm lately."
label(data$withdraw11_3mo)="31. I have been bothered by the desire to smoke cigarettes."
label(data$withdraw12_3mo)="32. I have felt sad or depressed. "
label(data$withdraw13_3mo)="33. I have been irritable, easily angered."
label(data$withdraw14_3mo)="34. I want to nibble on snacks or sweets."
label(data$withdraw15_3mo)="35. I have been bothered by negative moods such as anger, frustration, and irritability."
label(data$withdraw16_3mo)="36. I have been eating a lot."
label(data$withdraw17_3mo)="37. I am satisfied with my sleep."
label(data$withdraw18_3mo)="38. I have felt frustrated."
label(data$withdraw19_3mo)="39. I have felt hopeless or discouraged. "
label(data$withdraw20_3mo)="40. I have thought about smoking a lot."
label(data$withdraw21_3mo)="41. I have felt hungry. "
label(data$withdraw22_3mo)="42. I feel that I am getting enough sleep."
label(data$withdraw23_3mo)="43. Its hard to pay attention to things. "
label(data$withdraw24_3mo)="44. I have felt happy and content."
label(data$withdraw25_3mo)="45. My sleep has been troubled."
label(data$withdraw26_3mo)="46. I have trouble getting cigarettes off my mind. "
label(data$withdraw27_3mo)="47. It has been difficult to think clearly."
label(data$withdraw28_3mo)="48. I think about food a lot. "
label(data$haart_3mo)="49. Are you currently taking HIV medications?"
label(data$haartregular_3mo)="49a. Do you take your HIV medications regularly?"
label(data$haartadhere_3mo)="49b. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$month_followup_visit_3month_complete)="Complete?"
label(data$date_6mo)="Date of visit"
label(data$cardiac_6mo)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_6mo)="2. Since your last visit, have you had a stroke?"
label(data$unstable_6mo)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_6mo)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_6mo)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$pregnantpatch_6mo)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_6mo)="1. Since your last visit, has your employment status changed?"
label(data$empstatus_6mo)="1a. Employment status"
label(data$livechange_6mo)="2. Since your last visit, has your current living situation changed?"
label(data$currlive_6mo)="2a. Current Living Situation"
label(data$prison_6mo)="3. Since your last visit, have you been in prison?"
label(data$homeless_6mo)="4. Since your last visit, have you been homeless?"
label(data$mine_6mo)="5. Since your last visit, have you worked in a mine?"
label(data$tb_6mo)="6. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_6mo)="6a. (MONTH) When were you diagnosed with TB?"
label(data$tbtreat_6mo)="6b. When did you start treatment for TB?"
label(data$txmonth_6mo)="6b. (MONTH) When did you start treatment for TB?"
label(data$hhtb_6mo)="7. Since your last visit, has anyone in your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_6mo)="7a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$worksmoke_6mo)="8. Since your last visit, were you exposed to someone elses tobacco smoke inside your workplace?"
label(data$livewithsmoker_6mo)="9. Since your last visit, have you lived with a regular cigarette smoker who smoked inside the house?"
label(data$stillsmoke_6mo)="1. Are you still smoking cigarettes today or have you smoked within the last 7 days?"
label(data$lastcigunits_6mo)="1a. (units) "
label(data$motivated_6mo)="1b. If Yes, how motivated are you to stop smoking?"
label(data$sincestopsmokeunits_6mo)="2. (units) "
label(data$reasons_6mo___1)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Felt sick)"
label(data$reasons_6mo___2)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To improve my health)"
label(data$reasons_6mo___3)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To save money)"
label(data$reasons_6mo___4)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Influence from family/friends)"
label(data$reasons_6mo___5)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Counseling during study visit)"
label(data$reasons_6mo___7)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Other)"
label(data$methodstop_6mo___1)="4. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_6mo___2)="4. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_6mo___3)="4. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_6mo___4)="4. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_6mo___5)="4. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_6mo___6)="4. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_6mo___7)="4. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_6mo___0)="4. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_6mo)="5. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_6mo)="5a. How many did you use per day?"
label(data$patchtimeused_6mo)="5b. How long did you use it for?"
label(data$gum_6mo)="6. Since your last visit, have you used any nicotine gum?"
label(data$gumnum_6mo)="6a. How many did you use per day?"
label(data$gumtimeused_6mo)="6b. How long did you use it for?"
label(data$mirisk_6mo)="1. Do you think your risk of having a heart attack is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$strokerisk_6mo)="2. Do you think your risk of having a stroke is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$cigcancer_6mo)="3. Cigarettes still have not been proven to cause cancer. "
label(data$cigs5cancer_6mo)="4. If a person smokes only 5 cigarettes per day, their chances of getting cancer from smoking are about the same as someone who never smokes. "
label(data$ciglungs_6mo)="5. Cigarette smoking only affects the lungs, and not other organs."
label(data$cigco_6mo)="6. Cigarette smoke contains carbon monoxide."
label(data$cignh3_6mo)="7. Cigarette smoke contains ammonia"
label(data$cigadd_6mo)="8. Cigarettes with additives are more harmful than the ones that dont have additives. "
label(data$niccancer_6mo)="9. Nicotine causes cancer."
label(data$nicpatchmi_6mo)="10. Nicotine patches are just as likely to cause someone to have a heart attack as cigarettes. "
label(data$nicurge_6mo)="11. Nicotine medications (patch, gum) work by completely eliminating the urge to smoke. "
label(data$nicsick_6mo)="12. Nicotine medications work by making you physically sick if you take them and smoke at the same time."
label(data$nicquit_6mo)="13. Nicotine medications like the patch and gum improve a smokers chance of quitting successfully. "
label(data$withdraw1_6mo)="1. Food is not particularly appealing to me."
label(data$withdraw2_6mo)="2. I am getting restful sleep."
label(data$withdraw3_6mo)="3. I have been tense or anxious."
label(data$withdraw4_6mo)="4. My level of concentration is excellent."
label(data$withdraw5_6mo)="5. I awaken from sleep frequently during the night."
label(data$withdraw6_6mo)="6. I have felt impatient."
label(data$withdraw7_6mo)="7. I have felt upbeat and optimistic."
label(data$withdraw8_6mo)="8. I have found myself worrying about my problems."
label(data$withdraw9_6mo)="9. I have had frequent urges to smoke."
label(data$withdraw10_6mo)="10. I have felt calm lately"
label(data$withdraw11_6mo)="11. I have been bothered by the desire to smoke cigarettes. "
label(data$withdraw12_6mo)="12. I have felt sad or depressed."
label(data$withdraw13_6mo)="13. I have been irritable, easily angered."
label(data$withdraw14_6mo)="14. I want to nibble on snacks or sweets. "
label(data$withdraw15_6mo)="15. I have been bothered by negative moods such as anger, frustration, and irritability. "
label(data$withdraw16_6mo)="16. I have been eating a lot."
label(data$withdraw17_6mo)="17. I am satisfied with my sleep."
label(data$withdraw18_6mo)="18. I have felt frustrated."
label(data$withdraw19_6mo)="19. I have felt hopeless or discouraged."
label(data$withdraw20_6mo)="20. I have thought about smoking a lot."
label(data$withdraw21_6mo)="21. I have felt hungry."
label(data$withdraw22_6mo)="22. I feel that I am getting enough sleep."
label(data$withdraw23_6mo)="23. Its hard to pay attention to things. "
label(data$withdraw24_6mo)="24. I have felt happy and content."
label(data$withdraw25_6mo)="25. My sleep has been troubled."
label(data$withdraw26_6mo)="26. I have trouble getting cigarettes off my mind."
label(data$withdraw27_6mo)="27. It has been difficult to think clearly."
label(data$withdraw28_6mo)="28. I think about food a lot."
label(data$meds_6mo)="1. Are you on medication for any of the following?"
label(data$tbtx_6mo)="2. Are you on treatment for TB?"
label(data$haart_6mo)="3. Are you on HAART?"
label(data$haartregular_6mo)="4. Do you take your HIV medications regularly?"
label(data$haartadhere_6mo)="5. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$cotininevalue_6mo)="Smokescreen measurement"
label(data$cotinine_6mo)="Smokescreen measurement (number)"
label(data$nicalert_6mo)="NicAlert reading"
label(data$dtcomp_6mo)="Date of interview conducted"
label(data$month_followup_visit_6month_complete)="Complete?"
label(data$y_final)="What form are you data entering?"
label(data$missdate_final)="Date of CRF completion"
label(data$date_final)="Date of Visit"
label(data$cardiac_fina)="1. Since your last visit, have you had a heart attack?"
label(data$stroke_final)="2. Since your last visit, have you had a stroke?"
label(data$unstable_final)="3. Since your last visit, have you been diagnosed with any unstable medical conditions? For example, unstable chest pain (angina), uncontrolled high blood pressure (hypertension), or severely irregular heart beat (arrhythmia)?"
label(data$skin_final)="4. Since your last visit, have you been diagnosed with any active skin conditions or diseases, such as psoriasis?"
label(data$pregnant_final)="5. Since your last visit, have you become pregnant or started nursing?"
label(data$pregnantpatch_final)="5a. If Yes AND in Group B, did you stop using the patch?"
label(data$employchange_final)="1. Since your last visit, has your employment status changed?"
label(data$empstatus_final)="1a. Employment status"
label(data$livechange_final)="2. Since your last visit, has your current living situation changed?"
label(data$currlive_final)="2a. Current Living Situation"
label(data$prison_final)="3. Since your last visit, have you been in prison?"
label(data$homeless_final)="4. Since your last visit, have you been homeless?"
label(data$mine_final)="5. Since your last visit, have you worked in a mine?"
label(data$tb_final)="6. Since your last visit, have you been told by a doctor or nurse or TB clinic you have TB?"
label(data$tbmonth_final)="6a. (MONTH) When were you diagnosed with TB?"
label(data$tbtreat_final)="6b. When did you start treatment for TB?"
label(data$txmonth_final)="6b. (MONTH) When did you start treatment for TB?"
label(data$hhtb_final)="7. Since your last visit, has anyone in your household been told by a doctor or nurse or TB clinic that he/she has TB?"
label(data$hhtbmonth_final)="7a. (MONTH) When was a person in your house diagnosed with TB?"
label(data$stillsmoke_final)="1. Are you still smoking cigarettes?"
label(data$motivated_final)="1a. If Yes, how motivated are you to stop smoking?"
label(data$helpquit_final)="1b. What would help you quit smoking if you tried again?"
label(data$sincestopsmokeunits_final)="2. (units) "
label(data$reasons_final___1)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Felt sick)"
label(data$reasons_final___2)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To improve my health)"
label(data$reasons_final___3)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=To save money)"
label(data$reasons_final___4)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Influence from family/friends)"
label(data$reasons_final___5)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Counseling during study visit)"
label(data$reasons_final___7)="3. What are the main reasons you stopped (or are trying to stop) smoking? (choice=Other)"
label(data$methodstop_final___1)="4. What methods are you using to stop smoking? (choice=Counseling - outside of study visits)"
label(data$methodstop_final___2)="4. What methods are you using to stop smoking? (choice=Support group)"
label(data$methodstop_final___3)="4. What methods are you using to stop smoking? (choice=Nicotine replacement (patch) - outside study)"
label(data$methodstop_final___4)="4. What methods are you using to stop smoking? (choice=Nicotine replacement (gum) - outside study)"
label(data$methodstop_final___5)="4. What methods are you using to stop smoking? (choice=Written materials - outside study)"
label(data$methodstop_final___6)="4. What methods are you using to stop smoking? (choice=Prescription medications)"
label(data$methodstop_final___7)="4. What methods are you using to stop smoking? (choice=Other)"
label(data$methodstop_final___0)="4. What methods are you using to stop smoking? (choice=None of the above)"
label(data$patch_final)="5. Since your last clinic visit, have you used any nicotine patches?"
label(data$patchnum_final)="5a. How many did you use per day?"
label(data$patchtimeused_final)="5b. How long did you use it for?"
label(data$gum_final)="6. Since your last visit, have you used any nicotine gum?"
label(data$gumnum_final)="6a. How many did you use per day?"
label(data$gumtimeused_final)="6b. How long did you use it for?"
label(data$mirisk_final)="1. Do you think your risk of having a heart attack is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$strokerisk_final)="2. Do you think your risk of having a stroke is higher, lower or about the same as other nonsmoking HIV+ men/women your age?"
label(data$cigcancer_final)="3. Cigarettes still have not been proven to cause cancer. "
label(data$cigs5cancer_final)="4. If a person smokes only 5 cigarettes per day, their chances of getting cancer from smoking are about the same as someone who never smokes. "
label(data$ciglungs_final)="5. Cigarette smoking only affects the lungs, and not other organs."
label(data$cigco_final)="6. Cigarette smoke contains carbon monoxide."
label(data$cignh3_final)="7. Cigarette smoke contains ammonia"
label(data$cigadd_final)="8. Cigarettes with additives are more harmful than the ones that dont have additives. "
label(data$niccancer_final)="9. Nicotine causes cancer."
label(data$nicpatchmi_final)="10. Nicotine patches are just as likely to cause someone to have a heart attack as cigarettes. "
label(data$nicurge_final)="11. Nicotine medications (patch, gum) work by completely eliminating the urge to smoke. "
label(data$nicsick_final)="12. Nicotine medications work by making you physically sick if you take them and smoke at the same time."
label(data$nicquit_final)="13. Nicotine medications like the patch and gum improve a smokers chance of quitting successfully. "
label(data$withdraw1_final)="1. Food is not particularly appealing to me."
label(data$withdraw2_final)="2. I am getting restful sleep."
label(data$withdraw3_final)="3. I have been tense or anxious."
label(data$withdraw4_final)="4. My level of concentration is excellent."
label(data$withdraw5_final)="5. I awaken from sleep frequently during the night."
label(data$withdraw6_final)="6. I have felt impatient."
label(data$withdraw7_final)="7. I have felt upbeat and optimistic."
label(data$withdraw8_final)="8. I have found myself worrying about my problems."
label(data$withdraw9_final)="9. I have had frequent urges to smoke."
label(data$withdraw10_final)="10. I have felt calm lately"
label(data$withdraw11_final)="11. I have been bothered by the desire to smoke cigarettes. "
label(data$withdraw12_final)="12. I have felt sad or depressed."
label(data$withdraw13_final)="13. I have been irritable, easily angered."
label(data$withdraw14_final)="14. I want to nibble on snacks or sweets. "
label(data$withdraw15_final)="15. I have been bothered by negative moods such as anger, frustration, and irritability. "
label(data$withdraw16_final)="16. I have been eating a lot."
label(data$withdraw17_final)="17. I am satisfied with my sleep."
label(data$withdraw18_final)="18. I have felt frustrated."
label(data$withdraw19_final)="19. I have felt hopeless or discouraged."
label(data$withdraw20_final)="20. I have thought about smoking a lot."
label(data$withdraw21_final)="21. I have felt hungry."
label(data$withdraw22_final)="22. I feel that I am getting enough sleep."
label(data$withdraw23_final)="23. Its hard to pay attention to things. "
label(data$withdraw24_final)="24. I have felt happy and content."
label(data$withdraw25_final)="25. My sleep has been troubled."
label(data$withdraw26_final)="26. I have trouble getting cigarettes off my mind."
label(data$withdraw27_final)="27. It has been difficult to think clearly."
label(data$withdraw28_final)="28. I think about food a lot."
label(data$meds_final)="1. Are you on medication for any of the following?"
label(data$tbtx_final)="2. Are you on treatment for TB?"
label(data$haart_final)="3. Are you on HAART?"
label(data$haartregular_final)="4. Do you take your HIV medications regularly?"
label(data$haartadhere_final)="5. Thinking about the last month, how much of the time were you able to take your medicines exactly as your doctor prescribed them?"
label(data$cotininevalue_final)="Smokescreen measurement"
label(data$cotinine_final)="Smokescreen measurement"
label(data$nicalert_final)="NicAlert reading"
label(data$dtcomp_final)="Date of interview conducted"
label(data$final_visit_complete)="Complete?"
label(data$da_enrolldate)="a) Date of enrollment"
label(data$da_source___1)="b) DA source (choice=Clinic MR)"
label(data$da_source___2)="b) DA source (choice=Pt book)"
label(data$da_source___3)="b) DA source (choice=Tier.net)"
label(data$bp1_yn)="1a) Is BP documented?"
label(data$bp1_s)="1.1 BP systolic"
label(data$bp1_d)="1.1 BP diastolic"
label(data$bp1_date)="1.1 BP date"
label(data$bp2_yn)="Is another BP documented?"
label(data$bp2_s)="1.2 BP systolic"
label(data$bp2_d)="1.2 BP diastolic"
label(data$bp2_date)="1.2 BP date"
label(data$bp3_yn)="Is another BP documented?"
label(data$bp3_s)="1.3 BP systolic"
label(data$bp3_d)="1.3 BP diastolic"
label(data$bp3_date)="1.3 BP date"
label(data$bp4_yn)="Is another BP documented?"
label(data$bp4_s)="1.4 BP systolic"
label(data$bp4_d)="1.4 BP diastolic"
label(data$bp4_date)="1.4 BP date"
label(data$bp5_yn)="Is another BP documented?"
label(data$bp5_s)="1.5 BP systolic"
label(data$bp5_d)="1.5 BP diastolic"
label(data$bp5_date)="1.5 BP date"
label(data$bp6_yn)="Is another BP documented?"
label(data$bp6_s)="1.6 BP systolic"
label(data$bp6_d)="1.6 BP diastolic"
label(data$bp6_date)="1.6 BP date"
label(data$bp7_yn)="Is another BP documented?"
label(data$bp7_s)="1.7 BP systolic"
label(data$bp7_d)="1.7 BP diastolic"
label(data$bp7_date)="1.7 BP date"
label(data$bp8_yn)="Is another BP documented?"
label(data$bp8_s)="1.8 BP systolic"
label(data$bp8_d)="1.8 BP diastolic"
label(data$bp8_date)="1.8 BP date"
label(data$bp9_yn)="Is another BP documented?"
label(data$bp9_s)="1.9 BP systolic"
label(data$bp9_d)="1.9 BP diastolic"
label(data$bp9_date)="1.9 BP date"
label(data$bp10_yn)="Is another BP documented?"
label(data$bp10_s)="1.10 BP systolic"
label(data$bp10_d)="1.10 BP diastolic"
label(data$bp10_date)="1.10 BP date"
label(data$bp11_yn)="Is another BP documented?"
label(data$bp11_s)="1.11 BP systolic"
label(data$bp11_d)="1.11 BP diastolic"
label(data$bp11_date)="1.11 BP date"
label(data$bp12_yn)="Is another BP documented?"
label(data$bp12_s)="1.12 BP systolic"
label(data$bp12_d)="1.12 BP diastolic"
label(data$bp12_date)="1.12 BP date"
label(data$wt1_yn)="1) Is weight documented?"
label(data$wt1)="2.1 Weight "
label(data$wt1_date)="2.1 Weight date"
label(data$wt2_yn)="Is another weight documented?"
label(data$wt2)="2.2 Weight "
label(data$wt2_date)="2.2 Weight date"
label(data$wt3_yn)="Is another weight documented?"
label(data$wt3)="2.3 Weight "
label(data$wt3_date)="2.3 Weight date"
label(data$wt4_yn)="Is another weight documented?"
label(data$wt4)="2.4 Weight "
label(data$wt4_date)="2.4 Weight date"
label(data$wt5_yn)="Is another weight documented?"
label(data$wt5)="2.5 Weight "
label(data$wt5_date)="2.5 Weight date"
label(data$wt6_yn)="Is another weight documented?"
label(data$wt6)="2.6 Weight "
label(data$wt6_date)="2.6 Weight date"
label(data$wt7_yn)="Is another weight documented?"
label(data$wt7)="2.7 Weight "
label(data$wt7_date)="2.7 Weight date"
label(data$wt8_yn)="Is another weight documented?"
label(data$wt8)="2.8 Weight "
label(data$wt8_date)="2.8 Weight date"
label(data$wt9_yn)="Is another weight documented?"
label(data$wt9)="2.9 Weight "
label(data$wt9_date)="2.9 Weight date"
label(data$wt10_yn)="Is another weight documented?"
label(data$wt10)="2.10 Weight "
label(data$wt10_date)="2.10 Weight date"
label(data$wt11_yn)="Is another weight documented?"
label(data$wt11)="2.11 Weight "
label(data$wt11_date)="2.11 Weight date"
label(data$wt12_yn)="Is another weight documented?"
label(data$wt12)="2.12 Weight "
label(data$wt12_date)="2.12 Weight date"
label(data$tb1)="3a) Has this patient been diagnosed with TB at any point between enrollment and end of follow up?"
label(data$tb1_date)="3.1 Date of TB diagnosis"
label(data$tb2_yn)="Is there another TB date?"
label(data$tb2_date)="3.2 Date of TB diagnosis"
label(data$cd4_1_yn)="4a) Is CD4 documented?"
label(data$cd4_1)="4.1 CD4 cell count"
label(data$cd4_1_date)="4.1 CD4 date"
label(data$cd4_2_yn)="Is there another CD4?"
label(data$cd4_2)="4.2 CD4 cell count"
label(data$cd4_2_date)="4.2 CD4 date"
label(data$cd4_3_yn)="Is there another CD4?"
label(data$cd4_3)="4.3 CD4 cell count"
label(data$cd4_3_date)="4.3 CD4 date"
label(data$cd4_4_yn)="Is there another CD4?"
label(data$cd4_4)="4.4 CD4 cell count"
label(data$cd4_4_date)="4.4 CD4 date"
label(data$cd4_5_yn)="Is there another CD4?"
label(data$cd4_5)="4.5 CD4 cell count"
label(data$cd4_5_date)="4.5 CD4 date"
label(data$cd4_6_yn)="Is there another CD4?"
label(data$cd4_6)="4.6 CD4 cell count"
label(data$cd4_6_date)="4.6 CD4 date"
label(data$cd4_7_yn)="Is there another CD4?"
label(data$cd4_7)="4.7 CD4 cell count"
label(data$cd4_7_date)="4.7 CD4 date"
label(data$cd4_8_yn)="Is there another CD4?"
label(data$cd4_8)="4.8 CD4 cell count"
label(data$cd4_8_date)="4.8 CD4 date"
label(data$vl1_yn)="5a) Is VL documented?"
label(data$vl1)="5.1 viral load"
label(data$vl1_date)="5.1 viral load date"
label(data$vl2_yn)="Is another VL documented?"
label(data$vl2)="5.2 viral load"
label(data$vl2_date)="5.2 viral load date"
label(data$vl3_yn)="Is another VL documented?"
label(data$vl3)="5.3 viral load"
label(data$vl3_date)="5.3 viral load date"
label(data$vl4_yn)="Is another VL documented?"
label(data$vl4)="5.4 viral load"
label(data$vl4_date)="5.4 viral load date"
label(data$vl5_yn)="Is another VL documented?"
label(data$vl5)="5.5 viral load"
label(data$vl5_date)="5.5 viral load date"
label(data$vl6_yn)="Is another VL documented?"
label(data$vl6)="5.6 viral load"
label(data$vl6_date)="5.6 viral load date"
label(data$vl7_yn)="Is another VL documented?"
label(data$vl7)="5.7 viral load"
label(data$vl7_date)="5.7 viral load date"
label(data$vl8_yn)="Is another VL documented?"
label(data$vl8)="5.8 viral load"
label(data$vl8_date)="5.8 viral load date"
label(data$art1_yn)="6a) On ART?"
label(data$art1)="6.1 Number of pills"
label(data$art1_date)="6.1 ART date"
label(data$art2_yn)="Is another ART documented?"
label(data$art2)="6.2 Number of pills"
label(data$art2_date)="6.2 ART date"
label(data$art3_yn)="Is another ART documented?"
label(data$art3)="6.3 Number of pills"
label(data$art3_date)="6.3 ART date"
label(data$art4_yn)="Is another ART documented?"
label(data$art4)="6.4 Number of pills"
label(data$art4_date)="6.4 ART date"
label(data$art5_yn)="Is another ART documented?"
label(data$art5)="6.5 Number of pills"
label(data$art5_date)="6.5 ART date"
label(data$art6_yn)="Is another ART documented?"
label(data$art6)="6.6 Number of pills"
label(data$art6_date)="6.6 ART date"
label(data$art7_yn)="Is another ART documented?"
label(data$art7)="6.7 Number of pills"
label(data$art7_date)="6.7 ART date"
label(data$art8_yn)="Is another ART documented?"
label(data$art8)="6.8 Number of pills"
label(data$art8_date)="6.8 ART date"
label(data$art9_yn)="Is another ART documented?"
label(data$art9)="6.9 Number of pills"
label(data$art9_date)="6.9 ART date"
label(data$art10_yn)="Is another ART documented?"
label(data$art10)="6.10 Number of pills"
label(data$art10_date)="6.10 ART date"
label(data$art11_yn)="Is another ART documented?"
label(data$art11)="6.11 Number of pills"
label(data$art11_date)="6.11 ART date"
label(data$art12_yn)="Is another ART documented?"
label(data$art12)="6.12 Number of pills"
label(data$art12_date)="6.12 ART date"
label(data$da_date)="d) Date of data abstraction"
label(data$da_initials)="Initials of person completing form"
label(data$final_data_abstraction_complete)="Complete?"
label(data$date_endcrf)="Date of CRF completion"
label(data$date_studyend)="Date of termination"
label(data$studyend)="Reason for termination"
label(data$termination_complete)="Complete?"
label(data$date_mortcrf)="Date of CRF completion"
label(data$date_death)="1. When did the patient die?"
label(data$date_beforedeath)="2. Date study staff last saw patient alive"
label(data$date_awaredeath)="3. Date study staff knew patient was dead"
label(data$date_infodeath)="4. Date information on death was collected"
label(data$contact_death)="5. Was study staff able to interview patient contact?"
label(data$contacttype_death)="5a. The person being interviewed about the patients death is the patients"
label(data$contactwith_death)="5b. Was person with patient when he/she died?"
label(data$mortality_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("baseline_arm_1","2_week_visit_arm_1","1mo_visit_arm_1","2mos_visit_arm_1","3mos_visit_arm_1","6mos_visit_arm_1","2nd_2week_visit_arm_1","2nd_1mo_visit_arm_1","2nd_2mos_visit_arm_1","2nd_3mos_visit_arm_1","12mos_visit_arm_1","baseline_arm_2","2_week_visit_arm_2","1_month_visit_arm_2","2_month_visit_arm_2","3_month_visit_arm_2","6_month_visit_arm_2","2nd_2week_visit_arm_2","2nd_1mo_visit_arm_2","2nd_2mos_visit_arm_2","2nd_3mos_visit_arm_2","12_month_visit_arm_2"))
data$rct_arm.factor = factor(data$rct_arm,levels=c("0","1"))
data$sex.factor = factor(data$sex,levels=c("0","1"))
data$race.factor = factor(data$race,levels=c("0","1","2","3","4","9"))
data$education.factor = factor(data$education,levels=c("0","1","2","3","4","9"))
data$employ.factor = factor(data$employ,levels=c("0","1","2","7"))
data$disability.factor = factor(data$disability,levels=c("1","0"))
data$perincome.factor = factor(data$perincome,levels=c("1","2","3","4"))
data$hhincome.factor = factor(data$hhincome,levels=c("1","2","3","4"))
data$currliving.factor = factor(data$currliving,levels=c("0","1","2","3","4"))
data$tv.factor = factor(data$tv,levels=c("1","0"))
data$car.factor = factor(data$car,levels=c("1","0"))
data$toilet.factor = factor(data$toilet,levels=c("1","0"))
data$mobile.factor = factor(data$mobile,levels=c("1","0"))
data$sms.factor = factor(data$sms,levels=c("1","0"))
data$smartphone.factor = factor(data$smartphone,levels=c("1","0"))
data$lastsmokeunits.factor = factor(data$lastsmokeunits,levels=c("1","2","3"))
data$wakesmokeunits.factor = factor(data$wakesmokeunits,levels=c("1","2"))
data$triedtostop.factor = factor(data$triedtostop,levels=c("1","0"))
data$reasonstop___1.factor = factor(data$reasonstop___1,levels=c("0","1"))
data$reasonstop___2.factor = factor(data$reasonstop___2,levels=c("0","1"))
data$reasonstop___3.factor = factor(data$reasonstop___3,levels=c("0","1"))
data$reasonstop___4.factor = factor(data$reasonstop___4,levels=c("0","1"))
data$reasonstop___7.factor = factor(data$reasonstop___7,levels=c("0","1"))
data$methodstop___1.factor = factor(data$methodstop___1,levels=c("0","1"))
data$methodstop___2.factor = factor(data$methodstop___2,levels=c("0","1"))
data$methodstop___3.factor = factor(data$methodstop___3,levels=c("0","1"))
data$methodstop___4.factor = factor(data$methodstop___4,levels=c("0","1"))
data$methodstop___5.factor = factor(data$methodstop___5,levels=c("0","1"))
data$methodstop___6.factor = factor(data$methodstop___6,levels=c("0","1"))
data$methodstop___7.factor = factor(data$methodstop___7,levels=c("0","1"))
data$methodstop___0.factor = factor(data$methodstop___0,levels=c("0","1"))
data$dagga.factor = factor(data$dagga,levels=c("1","0"))
data$daggaoften.factor = factor(data$daggaoften,levels=c("1","2","3","4","5"))
data$snuffnotoften.factor = factor(data$snuffnotoften,levels=c("2","1","0"))
data$smokelessnotoften.factor = factor(data$smokelessnotoften,levels=c("2","1","0"))
data$pipesnotoften.factor = factor(data$pipesnotoften,levels=c("2","1","0"))
data$cigarsnotoften.factor = factor(data$cigarsnotoften,levels=c("2","1","0"))
data$kreteksnotoften.factor = factor(data$kreteksnotoften,levels=c("2","1","0"))
data$hookahnotoften.factor = factor(data$hookahnotoften,levels=c("2","1","0"))
data$manufacturednotoften.factor = factor(data$manufacturednotoften,levels=c("2","1","0"))
data$handrollednotoften.factor = factor(data$handrollednotoften,levels=c("2","1","0"))
data$othernotoften.factor = factor(data$othernotoften,levels=c("2","1","0"))
data$getcigs___1.factor = factor(data$getcigs___1,levels=c("0","1"))
data$getcigs___2.factor = factor(data$getcigs___2,levels=c("0","1"))
data$getcigs___3.factor = factor(data$getcigs___3,levels=c("0","1"))
data$getcigs___4.factor = factor(data$getcigs___4,levels=c("0","1"))
data$getcigs___7.factor = factor(data$getcigs___7,levels=c("0","1"))
data$buymyselfcigs___1.factor = factor(data$buymyselfcigs___1,levels=c("0","1"))
data$buymyselfcigs___2.factor = factor(data$buymyselfcigs___2,levels=c("0","1"))
data$buymyselfcigs___3.factor = factor(data$buymyselfcigs___3,levels=c("0","1"))
data$buymyselfcigs___7.factor = factor(data$buymyselfcigs___7,levels=c("0","1"))
data$cigsobtain___1.factor = factor(data$cigsobtain___1,levels=c("0","1"))
data$cigsobtain___2.factor = factor(data$cigsobtain___2,levels=c("0","1"))
data$cigsobtain___7.factor = factor(data$cigsobtain___7,levels=c("0","1"))
data$smokeexposurework.factor = factor(data$smokeexposurework,levels=c("1","0","7"))
data$smokeexposurehome.factor = factor(data$smokeexposurehome,levels=c("1","0"))
data$livedsmoker.factor = factor(data$livedsmoker,levels=c("1","0"))
data$mother.factor = factor(data$mother,levels=c("1","0"))
data$father.factor = factor(data$father,levels=c("1","0"))
data$otherlived.factor = factor(data$otherlived,levels=c("1","0"))
data$numotherlived.factor = factor(data$numotherlived,levels=c("1","2","4"))
data$cookfuel.factor = factor(data$cookfuel,levels=c("1","2","3","4","5","6","7"))
data$cookinhome.factor = factor(data$cookinhome,levels=c("1","2"))
data$heatfuel.factor = factor(data$heatfuel,levels=c("1","2","3","4","5","6","7"))
data$mbawula.factor = factor(data$mbawula,levels=c("1","0"))
data$curralcohol.factor = factor(data$curralcohol,levels=c("1","0"))
data$lessweeklydrink.factor = factor(data$lessweeklydrink,levels=c("2","1"))
data$cage1.factor = factor(data$cage1,levels=c("1","0"))
data$cage2.factor = factor(data$cage2,levels=c("1","0"))
data$cage3.factor = factor(data$cage3,levels=c("1","0"))
data$cage4.factor = factor(data$cage4,levels=c("1","0"))
data$prison.factor = factor(data$prison,levels=c("1","0"))
data$currhomeless.factor = factor(data$currhomeless,levels=c("1","0"))
data$shltr.factor = factor(data$shltr,levels=c("1","0"))
data$currmine.factor = factor(data$currmine,levels=c("1","0"))
data$mineyearsless.factor = factor(data$mineyearsless,levels=c("2","1"))
data$mine.factor = factor(data$mine,levels=c("1","0"))
data$mineyearsnumless.factor = factor(data$mineyearsnumless,levels=c("2","1"))
data$cough.factor = factor(data$cough,levels=c("1","0"))
data$coughlongunits.factor = factor(data$coughlongunits,levels=c("1","2","3"))
data$coughspu.factor = factor(data$coughspu,levels=c("1","0"))
data$coughspuunits.factor = factor(data$coughspuunits,levels=c("1","2","3"))
data$coughblood.factor = factor(data$coughblood,levels=c("1","0"))
data$coughbloodunits.factor = factor(data$coughbloodunits,levels=c("1","2","3"))
data$weightloss.factor = factor(data$weightloss,levels=c("1","0"))
data$weightlossunits.factor = factor(data$weightlossunits,levels=c("1","2","3"))
data$asthma.factor = factor(data$asthma,levels=c("1","0"))
data$asthmaunits.factor = factor(data$asthmaunits,levels=c("3","4"))
data$mirisk.factor = factor(data$mirisk,levels=c("1","2","3","9","7"))
data$strokerisk.factor = factor(data$strokerisk,levels=c("1","2","3","9","7"))
data$cigcancer.factor = factor(data$cigcancer,levels=c("1","0"))
data$cigs5cancer.factor = factor(data$cigs5cancer,levels=c("1","0"))
data$ciglungs.factor = factor(data$ciglungs,levels=c("1","0"))
data$cigco.factor = factor(data$cigco,levels=c("1","0"))
data$cignh3.factor = factor(data$cignh3,levels=c("1","0"))
data$cigadd.factor = factor(data$cigadd,levels=c("1","0"))
data$niccancer.factor = factor(data$niccancer,levels=c("1","0"))
data$nicpatchmi.factor = factor(data$nicpatchmi,levels=c("1","0"))
data$nicurge.factor = factor(data$nicurge,levels=c("1","0"))
data$nicsick.factor = factor(data$nicsick,levels=c("1","0"))
data$nicquit.factor = factor(data$nicquit,levels=c("1","0"))
data$food.factor = factor(data$food,levels=c("1","2","3","4","5"))
data$sleep.factor = factor(data$sleep,levels=c("1","2","3","4","5"))
data$tense.factor = factor(data$tense,levels=c("1","2","3","4","5"))
data$conc.factor = factor(data$conc,levels=c("1","2","3","4","5"))
data$poorsleep.factor = factor(data$poorsleep,levels=c("1","2","3","4","5"))
data$impt.factor = factor(data$impt,levels=c("1","2","3","4","5"))
data$upbt.factor = factor(data$upbt,levels=c("1","2","3","4","5"))
data$worry.factor = factor(data$worry,levels=c("1","2","3","4","5"))
data$smkurges.factor = factor(data$smkurges,levels=c("1","2","3","4","5"))
data$calm.factor = factor(data$calm,levels=c("1","2","3","4","5"))
data$smkbthr.factor = factor(data$smkbthr,levels=c("1","2","3","4","5"))
data$sad.factor = factor(data$sad,levels=c("1","2","3","4","5"))
data$anger.factor = factor(data$anger,levels=c("1","2","3","4","5"))
data$snacks.factor = factor(data$snacks,levels=c("1","2","3","4","5"))
data$negmoods.factor = factor(data$negmoods,levels=c("1","2","3","4","5"))
data$eatalot.factor = factor(data$eatalot,levels=c("1","2","3","4","5"))
data$satsleep.factor = factor(data$satsleep,levels=c("1","2","3","4","5"))
data$frust.factor = factor(data$frust,levels=c("1","2","3","4","5"))
data$hopels.factor = factor(data$hopels,levels=c("1","2","3","4","5"))
data$smkthnk.factor = factor(data$smkthnk,levels=c("1","2","3","4","5"))
data$hngry.factor = factor(data$hngry,levels=c("1","2","3","4","5"))
data$enghsleep.factor = factor(data$enghsleep,levels=c("1","2","3","4","5"))
data$attn.factor = factor(data$attn,levels=c("1","2","3","4","5"))
data$happy.factor = factor(data$happy,levels=c("1","2","3","4","5"))
data$sleeptrbl.factor = factor(data$sleeptrbl,levels=c("1","2","3","4","5"))
data$cigthnk.factor = factor(data$cigthnk,levels=c("1","2","3","4","5"))
data$thnkclr.factor = factor(data$thnkclr,levels=c("1","2","3","4","5"))
data$thnkfood.factor = factor(data$thnkfood,levels=c("1","2","3","4","5"))
data$meds___1.factor = factor(data$meds___1,levels=c("0","1"))
data$meds___2.factor = factor(data$meds___2,levels=c("0","1"))
data$meds___3.factor = factor(data$meds___3,levels=c("0","1"))
data$meds___4.factor = factor(data$meds___4,levels=c("0","1"))
data$meds___5.factor = factor(data$meds___5,levels=c("0","1"))
data$meds___6.factor = factor(data$meds___6,levels=c("0","1"))
data$tbtx.factor = factor(data$tbtx,levels=c("1","0"))
data$haart_enroll.factor = factor(data$haart_enroll,levels=c("1","0","9"))
data$enrollment_form_complete.factor = factor(data$enrollment_form_complete,levels=c("0","1","2"))
data$cotinine_reading.factor = factor(data$cotinine_reading,levels=c("0","1","2","3","4","7","9"))
data$randomisation_complete.factor = factor(data$randomisation_complete,levels=c("0","1","2"))
data$hiv_date_value.factor = factor(data$hiv_date_value,levels=c("1","9"))
data$haart_value.factor = factor(data$haart_value,levels=c("1","9","3"))
data$haart_meds___1.factor = factor(data$haart_meds___1,levels=c("0","1"))
data$haart_meds___2.factor = factor(data$haart_meds___2,levels=c("0","1"))
data$haart_meds___3.factor = factor(data$haart_meds___3,levels=c("0","1"))
data$haart_meds___4.factor = factor(data$haart_meds___4,levels=c("0","1"))
data$haart_meds___5.factor = factor(data$haart_meds___5,levels=c("0","1"))
data$haart_meds___6.factor = factor(data$haart_meds___6,levels=c("0","1"))
data$haart_meds___7.factor = factor(data$haart_meds___7,levels=c("0","1"))
data$haart_meds___8.factor = factor(data$haart_meds___8,levels=c("0","1"))
data$haart_meds___9.factor = factor(data$haart_meds___9,levels=c("0","1"))
data$haart_meds___10.factor = factor(data$haart_meds___10,levels=c("0","1"))
data$haart_meds___77.factor = factor(data$haart_meds___77,levels=c("0","1"))
data$cd4_value.factor = factor(data$cd4_value,levels=c("1","2","9"))
data$cd4_date_value.factor = factor(data$cd4_date_value,levels=c("1","9"))
data$vl_value.factor = factor(data$vl_value,levels=c("1","2","3","4","9"))
data$vl_date_value.factor = factor(data$vl_date_value,levels=c("1","9"))
data$tbtxdate_value.factor = factor(data$tbtxdate_value,levels=c("1","9","2"))
data$data_abstraction_complete.factor = factor(data$data_abstraction_complete,levels=c("0","1","2"))
data$y_2wk.factor = factor(data$y_2wk,levels=c("1","0"))
data$cardiac_2wk.factor = factor(data$cardiac_2wk,levels=c("1","0"))
data$stroke_2wk.factor = factor(data$stroke_2wk,levels=c("1","0"))
data$unstable_2wk.factor = factor(data$unstable_2wk,levels=c("1","0"))
data$skin_2wk.factor = factor(data$skin_2wk,levels=c("1","0"))
data$pregnant_2wk.factor = factor(data$pregnant_2wk,levels=c("1","0","2","9"))
data$bpatch_2wk.factor = factor(data$bpatch_2wk,levels=c("1","0","9"))
data$employchange_2wk.factor = factor(data$employchange_2wk,levels=c("1","0"))
data$empstatus_2wk.factor = factor(data$empstatus_2wk,levels=c("0","1","2","3"))
data$livechange_2wk.factor = factor(data$livechange_2wk,levels=c("1","0"))
data$currlive_2wk.factor = factor(data$currlive_2wk,levels=c("0","1","2","3","4"))
data$prison_2wk.factor = factor(data$prison_2wk,levels=c("1","0"))
data$homeless_2wk.factor = factor(data$homeless_2wk,levels=c("1","0"))
data$mine_2wk.factor = factor(data$mine_2wk,levels=c("1","0"))
data$tb_2wk.factor = factor(data$tb_2wk,levels=c("1","0"))
data$tbmonth_2wk.factor = factor(data$tbmonth_2wk,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_2wk.factor = factor(data$tbtreat_2wk,levels=c("1","0"))
data$txmonth_2wk.factor = factor(data$txmonth_2wk,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_2wk.factor = factor(data$hhtb_2wk,levels=c("1","0"))
data$hhtbmonth_2wk.factor = factor(data$hhtbmonth_2wk,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$worksmoke_2wk.factor = factor(data$worksmoke_2wk,levels=c("1","0","9","99"))
data$livewithsmoker_2wk.factor = factor(data$livewithsmoker_2wk,levels=c("1","0","99"))
data$stillsmoke_2wk.factor = factor(data$stillsmoke_2wk,levels=c("1","0"))
data$lastcigunits_2wk.factor = factor(data$lastcigunits_2wk,levels=c("1","2","3"))
data$sincestopsmokeunits_2wk.factor = factor(data$sincestopsmokeunits_2wk,levels=c("1","2","3"))
data$reasons_2wk___1.factor = factor(data$reasons_2wk___1,levels=c("0","1"))
data$reasons_2wk___2.factor = factor(data$reasons_2wk___2,levels=c("0","1"))
data$reasons_2wk___3.factor = factor(data$reasons_2wk___3,levels=c("0","1"))
data$reasons_2wk___4.factor = factor(data$reasons_2wk___4,levels=c("0","1"))
data$reasons_2wk___5.factor = factor(data$reasons_2wk___5,levels=c("0","1"))
data$reasons_2wk___7.factor = factor(data$reasons_2wk___7,levels=c("0","1"))
data$methodstop_2wk___1.factor = factor(data$methodstop_2wk___1,levels=c("0","1"))
data$methodstop_2wk___2.factor = factor(data$methodstop_2wk___2,levels=c("0","1"))
data$methodstop_2wk___3.factor = factor(data$methodstop_2wk___3,levels=c("0","1"))
data$methodstop_2wk___4.factor = factor(data$methodstop_2wk___4,levels=c("0","1"))
data$methodstop_2wk___5.factor = factor(data$methodstop_2wk___5,levels=c("0","1"))
data$methodstop_2wk___6.factor = factor(data$methodstop_2wk___6,levels=c("0","1"))
data$methodstop_2wk___7.factor = factor(data$methodstop_2wk___7,levels=c("0","1"))
data$methodstop_2wk___0.factor = factor(data$methodstop_2wk___0,levels=c("0","1"))
data$patch_2wk.factor = factor(data$patch_2wk,levels=c("1","0","99"))
data$patchtimeused_2wk.factor = factor(data$patchtimeused_2wk,levels=c("1","2"))
data$gum_2wk.factor = factor(data$gum_2wk,levels=c("1","0","99"))
data$gumtimeused_2wk.factor = factor(data$gumtimeused_2wk,levels=c("1","2"))
data$withdraw1_2wk.factor = factor(data$withdraw1_2wk,levels=c("1","2","3","4","5"))
data$withdraw2_2wk.factor = factor(data$withdraw2_2wk,levels=c("1","2","3","4","5"))
data$withdraw3_2wk.factor = factor(data$withdraw3_2wk,levels=c("1","2","3","4","5"))
data$withdraw4_2wk.factor = factor(data$withdraw4_2wk,levels=c("1","2","3","4","5"))
data$withdraw5_2wk.factor = factor(data$withdraw5_2wk,levels=c("1","2","3","4","5"))
data$withdraw6_2wk.factor = factor(data$withdraw6_2wk,levels=c("1","2","3","4","5"))
data$withdraw7_2wk.factor = factor(data$withdraw7_2wk,levels=c("1","2","3","4","5"))
data$withdraw8_2wk.factor = factor(data$withdraw8_2wk,levels=c("1","2","3","4","5"))
data$withdraw9_2wk.factor = factor(data$withdraw9_2wk,levels=c("1","2","3","4","5"))
data$withdraw10_2wk.factor = factor(data$withdraw10_2wk,levels=c("1","2","3","4","5"))
data$withdraw11_2wk.factor = factor(data$withdraw11_2wk,levels=c("1","2","3","4","5"))
data$withdraw12_2wk.factor = factor(data$withdraw12_2wk,levels=c("1","2","3","4","5"))
data$withdraw13_2wk.factor = factor(data$withdraw13_2wk,levels=c("1","2","3","4","5"))
data$withdraw14_2wk.factor = factor(data$withdraw14_2wk,levels=c("1","2","3","4","5"))
data$withdraw15_2wk.factor = factor(data$withdraw15_2wk,levels=c("1","2","3","4","5"))
data$withdraw16_2wk.factor = factor(data$withdraw16_2wk,levels=c("1","2","3","4","5"))
data$withdraw17_2wk.factor = factor(data$withdraw17_2wk,levels=c("1","2","3","4","5"))
data$withdraw18_2wk.factor = factor(data$withdraw18_2wk,levels=c("1","2","3","4","5"))
data$withdraw19_2wk.factor = factor(data$withdraw19_2wk,levels=c("1","2","3","4","5"))
data$withdraw20_2wk.factor = factor(data$withdraw20_2wk,levels=c("1","2","3","4","5"))
data$withdraw21_2wk.factor = factor(data$withdraw21_2wk,levels=c("1","2","3","4","5"))
data$withdraw22_2wk.factor = factor(data$withdraw22_2wk,levels=c("1","2","3","4","5"))
data$withdraw23_2wk.factor = factor(data$withdraw23_2wk,levels=c("1","2","3","4","5"))
data$withdraw24_2wk.factor = factor(data$withdraw24_2wk,levels=c("1","2","3","4","5"))
data$withdraw25_2wk.factor = factor(data$withdraw25_2wk,levels=c("1","2","3","4","5"))
data$withdraw26_2wk.factor = factor(data$withdraw26_2wk,levels=c("1","2","3","4","5"))
data$withdraw27_2wk.factor = factor(data$withdraw27_2wk,levels=c("1","2","3","4","5"))
data$withdraw28_2wk.factor = factor(data$withdraw28_2wk,levels=c("1","2","3","4","5"))
data$haart_2wk.factor = factor(data$haart_2wk,levels=c("1","0","2","99"))
data$haartregular_2wk.factor = factor(data$haartregular_2wk,levels=c("1","0","2"))
data$haartadhere_2wk.factor = factor(data$haartadhere_2wk,levels=c("1","2","3","4","5"))
data$week_followup_visit_complete.factor = factor(data$week_followup_visit_complete,levels=c("0","1","2"))
data$y_1mo.factor = factor(data$y_1mo,levels=c("1","0"))
data$cardiac_1mo.factor = factor(data$cardiac_1mo,levels=c("1","0"))
data$stroke_1mo.factor = factor(data$stroke_1mo,levels=c("1","0"))
data$unstable_1mo.factor = factor(data$unstable_1mo,levels=c("1","0"))
data$skin_1mo.factor = factor(data$skin_1mo,levels=c("1","0"))
data$pregnant_1mo.factor = factor(data$pregnant_1mo,levels=c("1","0","2","9"))
data$pregnantpatch_1mo.factor = factor(data$pregnantpatch_1mo,levels=c("1","0","9"))
data$employchange_1mo.factor = factor(data$employchange_1mo,levels=c("1","0"))
data$empstatus_1mo.factor = factor(data$empstatus_1mo,levels=c("0","1","2","3"))
data$livechange_1mo.factor = factor(data$livechange_1mo,levels=c("1","0"))
data$currlive_1mo.factor = factor(data$currlive_1mo,levels=c("0","1","2","3","4"))
data$prison_1mo.factor = factor(data$prison_1mo,levels=c("1","0"))
data$homeless_1mo.factor = factor(data$homeless_1mo,levels=c("1","0"))
data$mine_1mo.factor = factor(data$mine_1mo,levels=c("1","0"))
data$tb_1mo.factor = factor(data$tb_1mo,levels=c("1","0"))
data$tbmonth_1mo.factor = factor(data$tbmonth_1mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_1mo.factor = factor(data$tbtreat_1mo,levels=c("1","0"))
data$txmonth_1mo.factor = factor(data$txmonth_1mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_1mo.factor = factor(data$hhtb_1mo,levels=c("1","0"))
data$hhtbmonth_1mo.factor = factor(data$hhtbmonth_1mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$worksmoke_1mo.factor = factor(data$worksmoke_1mo,levels=c("1","0","9","99"))
data$livewithsmoker_1mo.factor = factor(data$livewithsmoker_1mo,levels=c("1","0","99"))
data$stillsmoke_1mo.factor = factor(data$stillsmoke_1mo,levels=c("1","0"))
data$lastcigunits_1mo.factor = factor(data$lastcigunits_1mo,levels=c("1","2","3"))
data$sincestopsmokeunits_1mo.factor = factor(data$sincestopsmokeunits_1mo,levels=c("1","2","3"))
data$reasons_1mo___1.factor = factor(data$reasons_1mo___1,levels=c("0","1"))
data$reasons_1mo___2.factor = factor(data$reasons_1mo___2,levels=c("0","1"))
data$reasons_1mo___3.factor = factor(data$reasons_1mo___3,levels=c("0","1"))
data$reasons_1mo___4.factor = factor(data$reasons_1mo___4,levels=c("0","1"))
data$reasons_1mo___5.factor = factor(data$reasons_1mo___5,levels=c("0","1"))
data$reasons_1mo___7.factor = factor(data$reasons_1mo___7,levels=c("0","1"))
data$methodstop_1mo___1.factor = factor(data$methodstop_1mo___1,levels=c("0","1"))
data$methodstop_1mo___2.factor = factor(data$methodstop_1mo___2,levels=c("0","1"))
data$methodstop_1mo___3.factor = factor(data$methodstop_1mo___3,levels=c("0","1"))
data$methodstop_1mo___4.factor = factor(data$methodstop_1mo___4,levels=c("0","1"))
data$methodstop_1mo___5.factor = factor(data$methodstop_1mo___5,levels=c("0","1"))
data$methodstop_1mo___6.factor = factor(data$methodstop_1mo___6,levels=c("0","1"))
data$methodstop_1mo___7.factor = factor(data$methodstop_1mo___7,levels=c("0","1"))
data$methodstop_1mo___0.factor = factor(data$methodstop_1mo___0,levels=c("0","1"))
data$patch_1mo.factor = factor(data$patch_1mo,levels=c("1","0","99"))
data$patchtimeused_1mo.factor = factor(data$patchtimeused_1mo,levels=c("1","2"))
data$gum_1mo.factor = factor(data$gum_1mo,levels=c("1","0","99"))
data$gumtimeused_1mo.factor = factor(data$gumtimeused_1mo,levels=c("1","2"))
data$withdraw1_1mo.factor = factor(data$withdraw1_1mo,levels=c("1","2","3","4","5"))
data$withdraw2_1mo.factor = factor(data$withdraw2_1mo,levels=c("1","2","3","4","5"))
data$withdraw3_1mo.factor = factor(data$withdraw3_1mo,levels=c("1","2","3","4","5"))
data$withdraw4_1mo.factor = factor(data$withdraw4_1mo,levels=c("1","2","3","4","5"))
data$withdraw5_1mo.factor = factor(data$withdraw5_1mo,levels=c("1","2","3","4","5"))
data$withdraw6_1mo.factor = factor(data$withdraw6_1mo,levels=c("1","2","3","4","5"))
data$withdraw7_1mo.factor = factor(data$withdraw7_1mo,levels=c("1","2","3","4","5"))
data$withdraw8_1mo.factor = factor(data$withdraw8_1mo,levels=c("1","2","3","4","5"))
data$withdraw9_1mo.factor = factor(data$withdraw9_1mo,levels=c("1","2","3","4","5"))
data$withdraw10_1mo.factor = factor(data$withdraw10_1mo,levels=c("1","2","3","4","5"))
data$withdraw11_1mo.factor = factor(data$withdraw11_1mo,levels=c("1","2","3","4","5"))
data$withdraw12_1mo.factor = factor(data$withdraw12_1mo,levels=c("1","2","3","4","5"))
data$withdraw13_1mo.factor = factor(data$withdraw13_1mo,levels=c("1","2","3","4","5"))
data$withdraw14_1mo.factor = factor(data$withdraw14_1mo,levels=c("1","2","3","4","5"))
data$withdraw15_1mo.factor = factor(data$withdraw15_1mo,levels=c("1","2","3","4","5"))
data$withdraw16_1mo.factor = factor(data$withdraw16_1mo,levels=c("1","2","3","4","5"))
data$withdraw17_1mo.factor = factor(data$withdraw17_1mo,levels=c("1","2","3","4","5"))
data$withdraw18_1mo.factor = factor(data$withdraw18_1mo,levels=c("1","2","3","4","5"))
data$withdraw19_1mo.factor = factor(data$withdraw19_1mo,levels=c("1","2","3","4","5"))
data$withdraw20_1mo.factor = factor(data$withdraw20_1mo,levels=c("1","2","3","4","5"))
data$withdraw21_1mo.factor = factor(data$withdraw21_1mo,levels=c("1","2","3","4","5"))
data$withdraw22_1mo.factor = factor(data$withdraw22_1mo,levels=c("1","2","3","4","5"))
data$withdraw23_1mo.factor = factor(data$withdraw23_1mo,levels=c("1","2","3","4","5"))
data$withdraw24_1mo.factor = factor(data$withdraw24_1mo,levels=c("1","2","3","4","5"))
data$withdraw25_1mo.factor = factor(data$withdraw25_1mo,levels=c("1","2","3","4","5"))
data$withdraw26_1mo.factor = factor(data$withdraw26_1mo,levels=c("1","2","3","4","5"))
data$withdraw27_1mo.factor = factor(data$withdraw27_1mo,levels=c("1","2","3","4","5"))
data$withdraw28_1mo.factor = factor(data$withdraw28_1mo,levels=c("1","2","3","4","5"))
data$haart_1mo.factor = factor(data$haart_1mo,levels=c("1","0","2","99"))
data$haartregular_1mo.factor = factor(data$haartregular_1mo,levels=c("1","0","2"))
data$haartadhere_1mo.factor = factor(data$haartadhere_1mo,levels=c("1","2","3","4","5"))
data$month_followup_visit_1month_complete.factor = factor(data$month_followup_visit_1month_complete,levels=c("0","1","2"))
data$y_2mo.factor = factor(data$y_2mo,levels=c("1","0"))
data$cardiac_2mo.factor = factor(data$cardiac_2mo,levels=c("1","0"))
data$stroke_2mo.factor = factor(data$stroke_2mo,levels=c("1","0"))
data$unstable_2mo.factor = factor(data$unstable_2mo,levels=c("1","0"))
data$skin_2mo.factor = factor(data$skin_2mo,levels=c("1","0"))
data$pregnant_2mo.factor = factor(data$pregnant_2mo,levels=c("1","0","2","9"))
data$pregnantpatch_2mo.factor = factor(data$pregnantpatch_2mo,levels=c("1","0","9"))
data$employchange_2mo.factor = factor(data$employchange_2mo,levels=c("1","0"))
data$empstatus_2mo.factor = factor(data$empstatus_2mo,levels=c("0","1","2","3"))
data$livechange_2mo.factor = factor(data$livechange_2mo,levels=c("1","0"))
data$currlive_2mo.factor = factor(data$currlive_2mo,levels=c("0","1","2","3","4"))
data$prison_2mo.factor = factor(data$prison_2mo,levels=c("1","0"))
data$homeless_2mo.factor = factor(data$homeless_2mo,levels=c("1","0"))
data$mine_2mo.factor = factor(data$mine_2mo,levels=c("1","0"))
data$tb_2mo.factor = factor(data$tb_2mo,levels=c("1","0"))
data$tbmonth_2mo.factor = factor(data$tbmonth_2mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_2mo.factor = factor(data$tbtreat_2mo,levels=c("1","0"))
data$txmonth_2mo.factor = factor(data$txmonth_2mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_2mo.factor = factor(data$hhtb_2mo,levels=c("1","0"))
data$hhtbmonth_2mo.factor = factor(data$hhtbmonth_2mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$worksmoke_2mo.factor = factor(data$worksmoke_2mo,levels=c("1","0","9","99"))
data$livewithsmoker_2mo.factor = factor(data$livewithsmoker_2mo,levels=c("1","0","99"))
data$stillsmoke_2mo.factor = factor(data$stillsmoke_2mo,levels=c("1","0"))
data$lastcigunits_2mo.factor = factor(data$lastcigunits_2mo,levels=c("1","2","3"))
data$sincestopsmokeunits_2mo.factor = factor(data$sincestopsmokeunits_2mo,levels=c("1","2","3"))
data$reasons_2mo___1.factor = factor(data$reasons_2mo___1,levels=c("0","1"))
data$reasons_2mo___2.factor = factor(data$reasons_2mo___2,levels=c("0","1"))
data$reasons_2mo___3.factor = factor(data$reasons_2mo___3,levels=c("0","1"))
data$reasons_2mo___4.factor = factor(data$reasons_2mo___4,levels=c("0","1"))
data$reasons_2mo___5.factor = factor(data$reasons_2mo___5,levels=c("0","1"))
data$reasons_2mo___7.factor = factor(data$reasons_2mo___7,levels=c("0","1"))
data$methodstop_2mo___1.factor = factor(data$methodstop_2mo___1,levels=c("0","1"))
data$methodstop_2mo___2.factor = factor(data$methodstop_2mo___2,levels=c("0","1"))
data$methodstop_2mo___3.factor = factor(data$methodstop_2mo___3,levels=c("0","1"))
data$methodstop_2mo___4.factor = factor(data$methodstop_2mo___4,levels=c("0","1"))
data$methodstop_2mo___5.factor = factor(data$methodstop_2mo___5,levels=c("0","1"))
data$methodstop_2mo___6.factor = factor(data$methodstop_2mo___6,levels=c("0","1"))
data$methodstop_2mo___7.factor = factor(data$methodstop_2mo___7,levels=c("0","1"))
data$methodstop_2mo___0.factor = factor(data$methodstop_2mo___0,levels=c("0","1"))
data$patch_2mo.factor = factor(data$patch_2mo,levels=c("1","0","99"))
data$patchtimeused_2mo.factor = factor(data$patchtimeused_2mo,levels=c("1","2"))
data$gum_2mo.factor = factor(data$gum_2mo,levels=c("1","0","99"))
data$gumtimeused_2mo.factor = factor(data$gumtimeused_2mo,levels=c("1","2"))
data$withdraw1_2mo.factor = factor(data$withdraw1_2mo,levels=c("1","2","3","4","5"))
data$withdraw2_2mo.factor = factor(data$withdraw2_2mo,levels=c("1","2","3","4","5"))
data$withdraw3_2mo.factor = factor(data$withdraw3_2mo,levels=c("1","2","3","4","5"))
data$withdraw4_2mo.factor = factor(data$withdraw4_2mo,levels=c("1","2","3","4","5"))
data$withdraw5_2mo.factor = factor(data$withdraw5_2mo,levels=c("1","2","3","4","5"))
data$withdraw6_2mo.factor = factor(data$withdraw6_2mo,levels=c("1","2","3","4","5"))
data$withdraw7_2mo.factor = factor(data$withdraw7_2mo,levels=c("1","2","3","4","5"))
data$withdraw8_2mo.factor = factor(data$withdraw8_2mo,levels=c("1","2","3","4","5"))
data$withdraw9_2mo.factor = factor(data$withdraw9_2mo,levels=c("1","2","3","4","5"))
data$withdraw10_2mo.factor = factor(data$withdraw10_2mo,levels=c("1","2","3","4","5"))
data$withdraw11_2mo.factor = factor(data$withdraw11_2mo,levels=c("1","2","3","4","5"))
data$withdraw12_2mo.factor = factor(data$withdraw12_2mo,levels=c("1","2","3","4","5"))
data$withdraw13_2mo.factor = factor(data$withdraw13_2mo,levels=c("1","2","3","4","5"))
data$withdraw14_2mo.factor = factor(data$withdraw14_2mo,levels=c("1","2","3","4","5"))
data$withdraw15_2mo.factor = factor(data$withdraw15_2mo,levels=c("1","2","3","4","5"))
data$withdraw16_2mo.factor = factor(data$withdraw16_2mo,levels=c("1","2","3","4","5"))
data$withdraw17_2mo.factor = factor(data$withdraw17_2mo,levels=c("1","2","3","4","5"))
data$withdraw18_2mo.factor = factor(data$withdraw18_2mo,levels=c("1","2","3","4","5"))
data$withdraw19_2mo.factor = factor(data$withdraw19_2mo,levels=c("1","2","3","4","5"))
data$withdraw20_2mo.factor = factor(data$withdraw20_2mo,levels=c("1","2","3","4","5"))
data$withdraw21_2mo.factor = factor(data$withdraw21_2mo,levels=c("1","2","3","4","5"))
data$withdraw22_2mo.factor = factor(data$withdraw22_2mo,levels=c("1","2","3","4","5"))
data$withdraw23_2mo.factor = factor(data$withdraw23_2mo,levels=c("1","2","3","4","5"))
data$withdraw24_2mo.factor = factor(data$withdraw24_2mo,levels=c("1","2","3","4","5"))
data$withdraw25_2mo.factor = factor(data$withdraw25_2mo,levels=c("1","2","3","4","5"))
data$withdraw26_2mo.factor = factor(data$withdraw26_2mo,levels=c("1","2","3","4","5"))
data$withdraw27_2mo.factor = factor(data$withdraw27_2mo,levels=c("1","2","3","4","5"))
data$withdraw28_2mo.factor = factor(data$withdraw28_2mo,levels=c("1","2","3","4","5"))
data$haart_2mo.factor = factor(data$haart_2mo,levels=c("1","0","2","99"))
data$haartregular_2mo.factor = factor(data$haartregular_2mo,levels=c("1","0","2"))
data$haartadhere_2mo.factor = factor(data$haartadhere_2mo,levels=c("1","2","3","4","5"))
data$cotininevalue_2mo.factor = factor(data$cotininevalue_2mo,levels=c("1","2","7"))
data$cotinine_reading_2mo.factor = factor(data$cotinine_reading_2mo,levels=c("0","1","2","3","4","7","9"))
data$nicalert_2mo.factor = factor(data$nicalert_2mo,levels=c("0","1","2","3","4","5","6"))
data$month_followup_visit_2month_complete.factor = factor(data$month_followup_visit_2month_complete,levels=c("0","1","2"))
data$y_3mo.factor = factor(data$y_3mo,levels=c("1","0"))
data$cardiac_3mo.factor = factor(data$cardiac_3mo,levels=c("1","0"))
data$stroke_3mo.factor = factor(data$stroke_3mo,levels=c("1","0"))
data$unstable_3mo.factor = factor(data$unstable_3mo,levels=c("1","0"))
data$skin_3mo.factor = factor(data$skin_3mo,levels=c("1","0"))
data$pregnant_3mo.factor = factor(data$pregnant_3mo,levels=c("1","0","2","9"))
data$pregnantpatch_3mo.factor = factor(data$pregnantpatch_3mo,levels=c("1","0","9"))
data$employchange_3mo.factor = factor(data$employchange_3mo,levels=c("1","0"))
data$empstatus_3mo.factor = factor(data$empstatus_3mo,levels=c("0","1","2","3"))
data$livechange_3mo.factor = factor(data$livechange_3mo,levels=c("1","0"))
data$currliv_3mo.factor = factor(data$currliv_3mo,levels=c("0","1","2","3","4"))
data$prison_3mo.factor = factor(data$prison_3mo,levels=c("1","0"))
data$homeless_3mo.factor = factor(data$homeless_3mo,levels=c("1","0"))
data$mine_3mo.factor = factor(data$mine_3mo,levels=c("1","0"))
data$tb_3mo.factor = factor(data$tb_3mo,levels=c("1","0"))
data$tbmonth_3mo.factor = factor(data$tbmonth_3mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_3mo.factor = factor(data$tbtreat_3mo,levels=c("1","0"))
data$txmonth_3mo.factor = factor(data$txmonth_3mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_3mo.factor = factor(data$hhtb_3mo,levels=c("1","0"))
data$hhtbmonth_3mo.factor = factor(data$hhtbmonth_3mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$worksmoke_3mo.factor = factor(data$worksmoke_3mo,levels=c("1","0","9","99"))
data$livewithsmoker_3mo.factor = factor(data$livewithsmoker_3mo,levels=c("1","0","99"))
data$stillsmoke_3mo.factor = factor(data$stillsmoke_3mo,levels=c("1","0"))
data$lastcigunits_3mo.factor = factor(data$lastcigunits_3mo,levels=c("1","2","3"))
data$sincestopsmokeunits_3mo.factor = factor(data$sincestopsmokeunits_3mo,levels=c("1","2","3"))
data$reasons_3mo___1.factor = factor(data$reasons_3mo___1,levels=c("0","1"))
data$reasons_3mo___2.factor = factor(data$reasons_3mo___2,levels=c("0","1"))
data$reasons_3mo___3.factor = factor(data$reasons_3mo___3,levels=c("0","1"))
data$reasons_3mo___4.factor = factor(data$reasons_3mo___4,levels=c("0","1"))
data$reasons_3mo___5.factor = factor(data$reasons_3mo___5,levels=c("0","1"))
data$reasons_3mo___7.factor = factor(data$reasons_3mo___7,levels=c("0","1"))
data$methodstop_3mo___1.factor = factor(data$methodstop_3mo___1,levels=c("0","1"))
data$methodstop_3mo___2.factor = factor(data$methodstop_3mo___2,levels=c("0","1"))
data$methodstop_3mo___3.factor = factor(data$methodstop_3mo___3,levels=c("0","1"))
data$methodstop_3mo___4.factor = factor(data$methodstop_3mo___4,levels=c("0","1"))
data$methodstop_3mo___5.factor = factor(data$methodstop_3mo___5,levels=c("0","1"))
data$methodstop_3mo___6.factor = factor(data$methodstop_3mo___6,levels=c("0","1"))
data$methodstop_3mo___7.factor = factor(data$methodstop_3mo___7,levels=c("0","1"))
data$methodstop_3mo___0.factor = factor(data$methodstop_3mo___0,levels=c("0","1"))
data$patch_3mo.factor = factor(data$patch_3mo,levels=c("1","0","99"))
data$patchtimeused_3mo.factor = factor(data$patchtimeused_3mo,levels=c("1","2"))
data$gum_3mo.factor = factor(data$gum_3mo,levels=c("1","0","99"))
data$gumtimeused_3mo.factor = factor(data$gumtimeused_3mo,levels=c("1","2"))
data$withdraw1_3mo.factor = factor(data$withdraw1_3mo,levels=c("1","2","3","4","5"))
data$withdraw2_3mo.factor = factor(data$withdraw2_3mo,levels=c("1","2","3","4","5"))
data$withdraw3_3mo.factor = factor(data$withdraw3_3mo,levels=c("1","2","3","4","5"))
data$withdraw4_3mo.factor = factor(data$withdraw4_3mo,levels=c("1","2","3","4","5"))
data$withdraw5_3mo.factor = factor(data$withdraw5_3mo,levels=c("1","2","3","4","5"))
data$withdraw6_3mo.factor = factor(data$withdraw6_3mo,levels=c("1","2","3","4","5"))
data$withdraw7_3mo.factor = factor(data$withdraw7_3mo,levels=c("1","2","3","4","5"))
data$withdraw8_3mo.factor = factor(data$withdraw8_3mo,levels=c("1","2","3","4","5"))
data$withdraw9_3mo.factor = factor(data$withdraw9_3mo,levels=c("1","2","3","4","5"))
data$withdraw10_3mo.factor = factor(data$withdraw10_3mo,levels=c("1","2","3","4","5"))
data$withdraw11_3mo.factor = factor(data$withdraw11_3mo,levels=c("1","2","3","4","5"))
data$withdraw12_3mo.factor = factor(data$withdraw12_3mo,levels=c("1","2","3","4","5"))
data$withdraw13_3mo.factor = factor(data$withdraw13_3mo,levels=c("1","2","3","4","5"))
data$withdraw14_3mo.factor = factor(data$withdraw14_3mo,levels=c("1","2","3","4","5"))
data$withdraw15_3mo.factor = factor(data$withdraw15_3mo,levels=c("1","2","3","4","5"))
data$withdraw16_3mo.factor = factor(data$withdraw16_3mo,levels=c("1","2","3","4","5"))
data$withdraw17_3mo.factor = factor(data$withdraw17_3mo,levels=c("1","2","3","4","5"))
data$withdraw18_3mo.factor = factor(data$withdraw18_3mo,levels=c("1","2","3","4","5"))
data$withdraw19_3mo.factor = factor(data$withdraw19_3mo,levels=c("1","2","3","4","5"))
data$withdraw20_3mo.factor = factor(data$withdraw20_3mo,levels=c("1","2","3","4","5"))
data$withdraw21_3mo.factor = factor(data$withdraw21_3mo,levels=c("1","2","3","4","5"))
data$withdraw22_3mo.factor = factor(data$withdraw22_3mo,levels=c("1","2","3","4","5"))
data$withdraw23_3mo.factor = factor(data$withdraw23_3mo,levels=c("1","2","3","4","5"))
data$withdraw24_3mo.factor = factor(data$withdraw24_3mo,levels=c("1","2","3","4","5"))
data$withdraw25_3mo.factor = factor(data$withdraw25_3mo,levels=c("1","2","3","4","5"))
data$withdraw26_3mo.factor = factor(data$withdraw26_3mo,levels=c("1","2","3","4","5"))
data$withdraw27_3mo.factor = factor(data$withdraw27_3mo,levels=c("1","2","3","4","5"))
data$withdraw28_3mo.factor = factor(data$withdraw28_3mo,levels=c("1","2","3","4","5"))
data$haart_3mo.factor = factor(data$haart_3mo,levels=c("1","0","2","99"))
data$haartregular_3mo.factor = factor(data$haartregular_3mo,levels=c("1","0","2"))
data$haartadhere_3mo.factor = factor(data$haartadhere_3mo,levels=c("1","2","3","4","5"))
data$month_followup_visit_3month_complete.factor = factor(data$month_followup_visit_3month_complete,levels=c("0","1","2"))
data$cardiac_6mo.factor = factor(data$cardiac_6mo,levels=c("1","0"))
data$stroke_6mo.factor = factor(data$stroke_6mo,levels=c("1","0"))
data$unstable_6mo.factor = factor(data$unstable_6mo,levels=c("1","0"))
data$skin_6mo.factor = factor(data$skin_6mo,levels=c("1","0"))
data$pregnant_6mo.factor = factor(data$pregnant_6mo,levels=c("1","0","2","9"))
data$pregnantpatch_6mo.factor = factor(data$pregnantpatch_6mo,levels=c("1","0","9"))
data$employchange_6mo.factor = factor(data$employchange_6mo,levels=c("1","0"))
data$empstatus_6mo.factor = factor(data$empstatus_6mo,levels=c("0","1","2","3"))
data$livechange_6mo.factor = factor(data$livechange_6mo,levels=c("1","0"))
data$currlive_6mo.factor = factor(data$currlive_6mo,levels=c("0","1","2","3","4"))
data$prison_6mo.factor = factor(data$prison_6mo,levels=c("1","0"))
data$homeless_6mo.factor = factor(data$homeless_6mo,levels=c("1","0"))
data$mine_6mo.factor = factor(data$mine_6mo,levels=c("1","0"))
data$tb_6mo.factor = factor(data$tb_6mo,levels=c("1","0"))
data$tbmonth_6mo.factor = factor(data$tbmonth_6mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_6mo.factor = factor(data$tbtreat_6mo,levels=c("1","0"))
data$txmonth_6mo.factor = factor(data$txmonth_6mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_6mo.factor = factor(data$hhtb_6mo,levels=c("1","0"))
data$hhtbmonth_6mo.factor = factor(data$hhtbmonth_6mo,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$worksmoke_6mo.factor = factor(data$worksmoke_6mo,levels=c("1","0","9"))
data$livewithsmoker_6mo.factor = factor(data$livewithsmoker_6mo,levels=c("1","0"))
data$stillsmoke_6mo.factor = factor(data$stillsmoke_6mo,levels=c("1","0"))
data$lastcigunits_6mo.factor = factor(data$lastcigunits_6mo,levels=c("1","2","3"))
data$sincestopsmokeunits_6mo.factor = factor(data$sincestopsmokeunits_6mo,levels=c("1","2","3"))
data$reasons_6mo___1.factor = factor(data$reasons_6mo___1,levels=c("0","1"))
data$reasons_6mo___2.factor = factor(data$reasons_6mo___2,levels=c("0","1"))
data$reasons_6mo___3.factor = factor(data$reasons_6mo___3,levels=c("0","1"))
data$reasons_6mo___4.factor = factor(data$reasons_6mo___4,levels=c("0","1"))
data$reasons_6mo___5.factor = factor(data$reasons_6mo___5,levels=c("0","1"))
data$reasons_6mo___7.factor = factor(data$reasons_6mo___7,levels=c("0","1"))
data$methodstop_6mo___1.factor = factor(data$methodstop_6mo___1,levels=c("0","1"))
data$methodstop_6mo___2.factor = factor(data$methodstop_6mo___2,levels=c("0","1"))
data$methodstop_6mo___3.factor = factor(data$methodstop_6mo___3,levels=c("0","1"))
data$methodstop_6mo___4.factor = factor(data$methodstop_6mo___4,levels=c("0","1"))
data$methodstop_6mo___5.factor = factor(data$methodstop_6mo___5,levels=c("0","1"))
data$methodstop_6mo___6.factor = factor(data$methodstop_6mo___6,levels=c("0","1"))
data$methodstop_6mo___7.factor = factor(data$methodstop_6mo___7,levels=c("0","1"))
data$methodstop_6mo___0.factor = factor(data$methodstop_6mo___0,levels=c("0","1"))
data$patch_6mo.factor = factor(data$patch_6mo,levels=c("1","0"))
data$patchtimeused_6mo.factor = factor(data$patchtimeused_6mo,levels=c("1","2"))
data$gum_6mo.factor = factor(data$gum_6mo,levels=c("1","0"))
data$gumtimeused_6mo.factor = factor(data$gumtimeused_6mo,levels=c("1","2"))
data$mirisk_6mo.factor = factor(data$mirisk_6mo,levels=c("1","2","3","9","7"))
data$strokerisk_6mo.factor = factor(data$strokerisk_6mo,levels=c("1","2","3","9","7"))
data$cigcancer_6mo.factor = factor(data$cigcancer_6mo,levels=c("1","0"))
data$cigs5cancer_6mo.factor = factor(data$cigs5cancer_6mo,levels=c("1","0"))
data$ciglungs_6mo.factor = factor(data$ciglungs_6mo,levels=c("1","0"))
data$cigco_6mo.factor = factor(data$cigco_6mo,levels=c("1","0"))
data$cignh3_6mo.factor = factor(data$cignh3_6mo,levels=c("1","0"))
data$cigadd_6mo.factor = factor(data$cigadd_6mo,levels=c("1","0"))
data$niccancer_6mo.factor = factor(data$niccancer_6mo,levels=c("1","0"))
data$nicpatchmi_6mo.factor = factor(data$nicpatchmi_6mo,levels=c("1","0"))
data$nicurge_6mo.factor = factor(data$nicurge_6mo,levels=c("1","0"))
data$nicsick_6mo.factor = factor(data$nicsick_6mo,levels=c("1","0"))
data$nicquit_6mo.factor = factor(data$nicquit_6mo,levels=c("1","0"))
data$withdraw1_6mo.factor = factor(data$withdraw1_6mo,levels=c("1","2","3","4","5"))
data$withdraw2_6mo.factor = factor(data$withdraw2_6mo,levels=c("1","2","3","4","5"))
data$withdraw3_6mo.factor = factor(data$withdraw3_6mo,levels=c("1","2","3","4","5"))
data$withdraw4_6mo.factor = factor(data$withdraw4_6mo,levels=c("1","2","3","4","5"))
data$withdraw5_6mo.factor = factor(data$withdraw5_6mo,levels=c("1","2","3","4","5"))
data$withdraw6_6mo.factor = factor(data$withdraw6_6mo,levels=c("1","2","3","4","5"))
data$withdraw7_6mo.factor = factor(data$withdraw7_6mo,levels=c("1","2","3","4","5"))
data$withdraw8_6mo.factor = factor(data$withdraw8_6mo,levels=c("1","2","3","4","5"))
data$withdraw9_6mo.factor = factor(data$withdraw9_6mo,levels=c("1","2","3","4","5"))
data$withdraw10_6mo.factor = factor(data$withdraw10_6mo,levels=c("1","2","3","4","5"))
data$withdraw11_6mo.factor = factor(data$withdraw11_6mo,levels=c("1","2","3","4","5"))
data$withdraw12_6mo.factor = factor(data$withdraw12_6mo,levels=c("1","2","3","4","5"))
data$withdraw13_6mo.factor = factor(data$withdraw13_6mo,levels=c("1","2","3","4","5"))
data$withdraw14_6mo.factor = factor(data$withdraw14_6mo,levels=c("1","2","3","4","5"))
data$withdraw15_6mo.factor = factor(data$withdraw15_6mo,levels=c("1","2","3","4","5"))
data$withdraw16_6mo.factor = factor(data$withdraw16_6mo,levels=c("1","2","3","4","5"))
data$withdraw17_6mo.factor = factor(data$withdraw17_6mo,levels=c("1","2","3","4","5"))
data$withdraw18_6mo.factor = factor(data$withdraw18_6mo,levels=c("1","2","3","4","5"))
data$withdraw19_6mo.factor = factor(data$withdraw19_6mo,levels=c("1","2","3","4","5"))
data$withdraw20_6mo.factor = factor(data$withdraw20_6mo,levels=c("1","2","3","4","5"))
data$withdraw21_6mo.factor = factor(data$withdraw21_6mo,levels=c("1","2","3","4","5"))
data$withdraw22_6mo.factor = factor(data$withdraw22_6mo,levels=c("1","2","3","4","5"))
data$withdraw23_6mo.factor = factor(data$withdraw23_6mo,levels=c("1","2","3","4","5"))
data$withdraw24_6mo.factor = factor(data$withdraw24_6mo,levels=c("1","2","3","4","5"))
data$withdraw25_6mo.factor = factor(data$withdraw25_6mo,levels=c("1","2","3","4","5"))
data$withdraw26_6mo.factor = factor(data$withdraw26_6mo,levels=c("1","2","3","4","5"))
data$withdraw27_6mo.factor = factor(data$withdraw27_6mo,levels=c("1","2","3","4","5"))
data$withdraw28_6mo.factor = factor(data$withdraw28_6mo,levels=c("1","2","3","4","5"))
data$meds_6mo.factor = factor(data$meds_6mo,levels=c("1","2","3","4","5","6"))
data$tbtx_6mo.factor = factor(data$tbtx_6mo,levels=c("1","0"))
data$haart_6mo.factor = factor(data$haart_6mo,levels=c("1","0","9"))
data$haartregular_6mo.factor = factor(data$haartregular_6mo,levels=c("1","0","9"))
data$haartadhere_6mo.factor = factor(data$haartadhere_6mo,levels=c("0","1","2","3","4"))
data$cotininevalue_6mo.factor = factor(data$cotininevalue_6mo,levels=c("1","2","7"))
data$nicalert_6mo.factor = factor(data$nicalert_6mo,levels=c("0","1","2","3","4","5","6"))
data$month_followup_visit_6month_complete.factor = factor(data$month_followup_visit_6month_complete,levels=c("0","1","2"))
data$y_final.factor = factor(data$y_final,levels=c("1","0"))
data$cardiac_fina.factor = factor(data$cardiac_fina,levels=c("1","0"))
data$stroke_final.factor = factor(data$stroke_final,levels=c("1","0"))
data$unstable_final.factor = factor(data$unstable_final,levels=c("1","0"))
data$skin_final.factor = factor(data$skin_final,levels=c("1","0"))
data$pregnant_final.factor = factor(data$pregnant_final,levels=c("1","0","2","9"))
data$pregnantpatch_final.factor = factor(data$pregnantpatch_final,levels=c("1","0","9"))
data$employchange_final.factor = factor(data$employchange_final,levels=c("1","0"))
data$empstatus_final.factor = factor(data$empstatus_final,levels=c("0","1","2","3"))
data$livechange_final.factor = factor(data$livechange_final,levels=c("1","0"))
data$currlive_final.factor = factor(data$currlive_final,levels=c("0","1","2","3","4"))
data$prison_final.factor = factor(data$prison_final,levels=c("1","0"))
data$homeless_final.factor = factor(data$homeless_final,levels=c("1","0"))
data$mine_final.factor = factor(data$mine_final,levels=c("1","0"))
data$tb_final.factor = factor(data$tb_final,levels=c("1","0"))
data$tbmonth_final.factor = factor(data$tbmonth_final,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$tbtreat_final.factor = factor(data$tbtreat_final,levels=c("1","0"))
data$txmonth_final.factor = factor(data$txmonth_final,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$hhtb_final.factor = factor(data$hhtb_final,levels=c("1","0"))
data$hhtbmonth_final.factor = factor(data$hhtbmonth_final,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","99"))
data$stillsmoke_final.factor = factor(data$stillsmoke_final,levels=c("1","0"))
data$helpquit_final.factor = factor(data$helpquit_final,levels=c("1","2","3","7"))
data$sincestopsmokeunits_final.factor = factor(data$sincestopsmokeunits_final,levels=c("1","2","3"))
data$reasons_final___1.factor = factor(data$reasons_final___1,levels=c("0","1"))
data$reasons_final___2.factor = factor(data$reasons_final___2,levels=c("0","1"))
data$reasons_final___3.factor = factor(data$reasons_final___3,levels=c("0","1"))
data$reasons_final___4.factor = factor(data$reasons_final___4,levels=c("0","1"))
data$reasons_final___5.factor = factor(data$reasons_final___5,levels=c("0","1"))
data$reasons_final___7.factor = factor(data$reasons_final___7,levels=c("0","1"))
data$methodstop_final___1.factor = factor(data$methodstop_final___1,levels=c("0","1"))
data$methodstop_final___2.factor = factor(data$methodstop_final___2,levels=c("0","1"))
data$methodstop_final___3.factor = factor(data$methodstop_final___3,levels=c("0","1"))
data$methodstop_final___4.factor = factor(data$methodstop_final___4,levels=c("0","1"))
data$methodstop_final___5.factor = factor(data$methodstop_final___5,levels=c("0","1"))
data$methodstop_final___6.factor = factor(data$methodstop_final___6,levels=c("0","1"))
data$methodstop_final___7.factor = factor(data$methodstop_final___7,levels=c("0","1"))
data$methodstop_final___0.factor = factor(data$methodstop_final___0,levels=c("0","1"))
data$patch_final.factor = factor(data$patch_final,levels=c("1","0"))
data$patchtimeused_final.factor = factor(data$patchtimeused_final,levels=c("1","2"))
data$gum_final.factor = factor(data$gum_final,levels=c("1","0"))
data$gumtimeused_final.factor = factor(data$gumtimeused_final,levels=c("1","2"))
data$mirisk_final.factor = factor(data$mirisk_final,levels=c("1","2","3","9","7"))
data$strokerisk_final.factor = factor(data$strokerisk_final,levels=c("1","2","3","9","7"))
data$cigcancer_final.factor = factor(data$cigcancer_final,levels=c("1","0"))
data$cigs5cancer_final.factor = factor(data$cigs5cancer_final,levels=c("1","0"))
data$ciglungs_final.factor = factor(data$ciglungs_final,levels=c("1","0"))
data$cigco_final.factor = factor(data$cigco_final,levels=c("1","0"))
data$cignh3_final.factor = factor(data$cignh3_final,levels=c("1","0"))
data$cigadd_final.factor = factor(data$cigadd_final,levels=c("1","0"))
data$niccancer_final.factor = factor(data$niccancer_final,levels=c("1","0"))
data$nicpatchmi_final.factor = factor(data$nicpatchmi_final,levels=c("1","0"))
data$nicurge_final.factor = factor(data$nicurge_final,levels=c("1","0"))
data$nicsick_final.factor = factor(data$nicsick_final,levels=c("1","0"))
data$nicquit_final.factor = factor(data$nicquit_final,levels=c("1","0"))
data$withdraw1_final.factor = factor(data$withdraw1_final,levels=c("1","2","3","4","5"))
data$withdraw2_final.factor = factor(data$withdraw2_final,levels=c("1","2","3","4","5"))
data$withdraw3_final.factor = factor(data$withdraw3_final,levels=c("1","2","3","4","5"))
data$withdraw4_final.factor = factor(data$withdraw4_final,levels=c("1","2","3","4","5"))
data$withdraw5_final.factor = factor(data$withdraw5_final,levels=c("1","2","3","4","5"))
data$withdraw6_final.factor = factor(data$withdraw6_final,levels=c("1","2","3","4","5"))
data$withdraw7_final.factor = factor(data$withdraw7_final,levels=c("1","2","3","4","5"))
data$withdraw8_final.factor = factor(data$withdraw8_final,levels=c("1","2","3","4","5"))
data$withdraw9_final.factor = factor(data$withdraw9_final,levels=c("1","2","3","4","5"))
data$withdraw10_final.factor = factor(data$withdraw10_final,levels=c("1","2","3","4","5"))
data$withdraw11_final.factor = factor(data$withdraw11_final,levels=c("1","2","3","4","5"))
data$withdraw12_final.factor = factor(data$withdraw12_final,levels=c("1","2","3","4","5"))
data$withdraw13_final.factor = factor(data$withdraw13_final,levels=c("1","2","3","4","5"))
data$withdraw14_final.factor = factor(data$withdraw14_final,levels=c("1","2","3","4","5"))
data$withdraw15_final.factor = factor(data$withdraw15_final,levels=c("1","2","3","4","5"))
data$withdraw16_final.factor = factor(data$withdraw16_final,levels=c("1","2","3","4","5"))
data$withdraw17_final.factor = factor(data$withdraw17_final,levels=c("1","2","3","4","5"))
data$withdraw18_final.factor = factor(data$withdraw18_final,levels=c("1","2","3","4","5"))
data$withdraw19_final.factor = factor(data$withdraw19_final,levels=c("1","2","3","4","5"))
data$withdraw20_final.factor = factor(data$withdraw20_final,levels=c("1","2","3","4","5"))
data$withdraw21_final.factor = factor(data$withdraw21_final,levels=c("1","2","3","4","5"))
data$withdraw22_final.factor = factor(data$withdraw22_final,levels=c("1","2","3","4","5"))
data$withdraw23_final.factor = factor(data$withdraw23_final,levels=c("1","2","3","4","5"))
data$withdraw24_final.factor = factor(data$withdraw24_final,levels=c("1","2","3","4","5"))
data$withdraw25_final.factor = factor(data$withdraw25_final,levels=c("1","2","3","4","5"))
data$withdraw26_final.factor = factor(data$withdraw26_final,levels=c("1","2","3","4","5"))
data$withdraw27_final.factor = factor(data$withdraw27_final,levels=c("1","2","3","4","5"))
data$withdraw28_final.factor = factor(data$withdraw28_final,levels=c("1","2","3","4","5"))
data$meds_final.factor = factor(data$meds_final,levels=c("1","2","3","4","5","6"))
data$tbtx_final.factor = factor(data$tbtx_final,levels=c("1","0"))
data$haart_final.factor = factor(data$haart_final,levels=c("1","0","9"))
data$haartregular_final.factor = factor(data$haartregular_final,levels=c("1","0","9"))
data$haartadhere_final.factor = factor(data$haartadhere_final,levels=c("0","1","2","3","4"))
data$cotininevalue_final.factor = factor(data$cotininevalue_final,levels=c("1","2","7"))
data$nicalert_final.factor = factor(data$nicalert_final,levels=c("0","1","2","3","4","5","6"))
data$final_visit_complete.factor = factor(data$final_visit_complete,levels=c("0","1","2"))
data$da_source___1.factor = factor(data$da_source___1,levels=c("0","1"))
data$da_source___2.factor = factor(data$da_source___2,levels=c("0","1"))
data$da_source___3.factor = factor(data$da_source___3,levels=c("0","1"))
data$bp1_yn.factor = factor(data$bp1_yn,levels=c("1","0"))
data$bp2_yn.factor = factor(data$bp2_yn,levels=c("1","0"))
data$bp3_yn.factor = factor(data$bp3_yn,levels=c("1","0"))
data$bp4_yn.factor = factor(data$bp4_yn,levels=c("1","0"))
data$bp5_yn.factor = factor(data$bp5_yn,levels=c("1","0"))
data$bp6_yn.factor = factor(data$bp6_yn,levels=c("1","0"))
data$bp7_yn.factor = factor(data$bp7_yn,levels=c("1","0"))
data$bp8_yn.factor = factor(data$bp8_yn,levels=c("1","0"))
data$bp9_yn.factor = factor(data$bp9_yn,levels=c("1","0"))
data$bp10_yn.factor = factor(data$bp10_yn,levels=c("1","0"))
data$bp11_yn.factor = factor(data$bp11_yn,levels=c("1","0"))
data$bp12_yn.factor = factor(data$bp12_yn,levels=c("1","0"))
data$wt1_yn.factor = factor(data$wt1_yn,levels=c("1","0"))
data$wt2_yn.factor = factor(data$wt2_yn,levels=c("1","0"))
data$wt3_yn.factor = factor(data$wt3_yn,levels=c("1","0"))
data$wt4_yn.factor = factor(data$wt4_yn,levels=c("1","0"))
data$wt5_yn.factor = factor(data$wt5_yn,levels=c("1","0"))
data$wt6_yn.factor = factor(data$wt6_yn,levels=c("1","0"))
data$wt7_yn.factor = factor(data$wt7_yn,levels=c("1","0"))
data$wt8_yn.factor = factor(data$wt8_yn,levels=c("1","0"))
data$wt9_yn.factor = factor(data$wt9_yn,levels=c("1","0"))
data$wt10_yn.factor = factor(data$wt10_yn,levels=c("1","0"))
data$wt11_yn.factor = factor(data$wt11_yn,levels=c("1","0"))
data$wt12_yn.factor = factor(data$wt12_yn,levels=c("1","0"))
data$tb1.factor = factor(data$tb1,levels=c("1","0"))
data$tb2_yn.factor = factor(data$tb2_yn,levels=c("1","0"))
data$cd4_1_yn.factor = factor(data$cd4_1_yn,levels=c("1","0"))
data$cd4_2_yn.factor = factor(data$cd4_2_yn,levels=c("1","0"))
data$cd4_3_yn.factor = factor(data$cd4_3_yn,levels=c("1","0"))
data$cd4_4_yn.factor = factor(data$cd4_4_yn,levels=c("1","0"))
data$cd4_5_yn.factor = factor(data$cd4_5_yn,levels=c("1","0"))
data$cd4_6_yn.factor = factor(data$cd4_6_yn,levels=c("1","0"))
data$cd4_7_yn.factor = factor(data$cd4_7_yn,levels=c("1","0"))
data$cd4_8_yn.factor = factor(data$cd4_8_yn,levels=c("1","0"))
data$vl1_yn.factor = factor(data$vl1_yn,levels=c("1","0"))
data$vl2_yn.factor = factor(data$vl2_yn,levels=c("1","0"))
data$vl3_yn.factor = factor(data$vl3_yn,levels=c("1","0"))
data$vl4_yn.factor = factor(data$vl4_yn,levels=c("1","0"))
data$vl5_yn.factor = factor(data$vl5_yn,levels=c("1","0"))
data$vl6_yn.factor = factor(data$vl6_yn,levels=c("1","0"))
data$vl7_yn.factor = factor(data$vl7_yn,levels=c("1","0"))
data$vl8_yn.factor = factor(data$vl8_yn,levels=c("1","0"))
data$art1_yn.factor = factor(data$art1_yn,levels=c("1","0","9"))
data$art2_yn.factor = factor(data$art2_yn,levels=c("1","0"))
data$art3_yn.factor = factor(data$art3_yn,levels=c("1","0"))
data$art4_yn.factor = factor(data$art4_yn,levels=c("1","0"))
data$art5_yn.factor = factor(data$art5_yn,levels=c("1","0"))
data$art6_yn.factor = factor(data$art6_yn,levels=c("1","0"))
data$art7_yn.factor = factor(data$art7_yn,levels=c("1","0"))
data$art8_yn.factor = factor(data$art8_yn,levels=c("1","0"))
data$art9_yn.factor = factor(data$art9_yn,levels=c("1","0"))
data$art10_yn.factor = factor(data$art10_yn,levels=c("1","0"))
data$art11_yn.factor = factor(data$art11_yn,levels=c("1","0"))
data$art12_yn.factor = factor(data$art12_yn,levels=c("1","0"))
data$final_data_abstraction_complete.factor = factor(data$final_data_abstraction_complete,levels=c("0","1","2"))
data$studyend.factor = factor(data$studyend,levels=c("1","2","3","4","5","7"))
data$termination_complete.factor = factor(data$termination_complete,levels=c("0","1","2"))
data$contact_death.factor = factor(data$contact_death,levels=c("1","0"))
data$contacttype_death.factor = factor(data$contacttype_death,levels=c("1","2","3","4","5","6"))
data$contactwith_death.factor = factor(data$contactwith_death,levels=c("1","0"))
data$mortality_complete.factor = factor(data$mortality_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Baseline (Arm 1: only Intensive Counseling)","2 week visit (Arm 1: only Intensive Counseling)","1mo. visit (Arm 1: only Intensive Counseling)","2mos. visit (Arm 1: only Intensive Counseling)","3mos. visit (Arm 1: only Intensive Counseling)","6mos. visit (Arm 1: only Intensive Counseling)","2nd 2week visit (Arm 1: only Intensive Counseling)","2nd 1mo. visit (Arm 1: only Intensive Counseling)","2nd 2mos. visit (Arm 1: only Intensive Counseling)","2nd 3mos. visit (Arm 1: only Intensive Counseling)","12mos. visit (Arm 1: only Intensive Counseling)","Baseline (Arm 2: NRT Intensive counseling)","2 week visit (Arm 2: NRT Intensive counseling)","1 month visit (Arm 2: NRT Intensive counseling)","2 month visit (Arm 2: NRT Intensive counseling)","3 month visit (Arm 2: NRT Intensive counseling)","6 month visit (Arm 2: NRT Intensive counseling)","2nd 2week visit (Arm 2: NRT Intensive counseling)","2nd 1mo. visit (Arm 2: NRT Intensive counseling)","2nd 2mos. visit (Arm 2: NRT Intensive counseling)","2nd 3mos. visit (Arm 2: NRT Intensive counseling)","12 month visit (Arm 2: NRT Intensive counseling)")
levels(data$rct_arm.factor)=c("(A) Counseling only","(B) NRT + counseling")
levels(data$sex.factor)=c("Female","Male")
levels(data$race.factor)=c("African/Black","Colored","Indian/Asian","White","Unspecified/Other","Dont know")
levels(data$education.factor)=c("None","Grade 0-5","Grade 6-11","Grade 12","Degree/Diploma","Dont know")
levels(data$employ.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$disability.factor)=c("Yes","No")
levels(data$perincome.factor)=c("< 1,000","1,000 - 5,000","5,000 - 10,000","> 10,000")
levels(data$hhincome.factor)=c("< 1,000","1,000 - 5,000","5,000 - 10,000","> 10,000")
levels(data$currliving.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$tv.factor)=c("Yes","No")
levels(data$car.factor)=c("Yes","No")
levels(data$toilet.factor)=c("Yes","No")
levels(data$mobile.factor)=c("Yes","No")
levels(data$sms.factor)=c("Yes","No")
levels(data$smartphone.factor)=c("Yes","No")
levels(data$lastsmokeunits.factor)=c("Minutes","Hours","Days")
levels(data$wakesmokeunits.factor)=c("Minutes","Hours")
levels(data$triedtostop.factor)=c("Yes","No")
levels(data$reasonstop___1.factor)=c("Unchecked","Checked")
levels(data$reasonstop___2.factor)=c("Unchecked","Checked")
levels(data$reasonstop___3.factor)=c("Unchecked","Checked")
levels(data$reasonstop___4.factor)=c("Unchecked","Checked")
levels(data$reasonstop___7.factor)=c("Unchecked","Checked")
levels(data$methodstop___1.factor)=c("Unchecked","Checked")
levels(data$methodstop___2.factor)=c("Unchecked","Checked")
levels(data$methodstop___3.factor)=c("Unchecked","Checked")
levels(data$methodstop___4.factor)=c("Unchecked","Checked")
levels(data$methodstop___5.factor)=c("Unchecked","Checked")
levels(data$methodstop___6.factor)=c("Unchecked","Checked")
levels(data$methodstop___7.factor)=c("Unchecked","Checked")
levels(data$methodstop___0.factor)=c("Unchecked","Checked")
levels(data$dagga.factor)=c("Yes","No")
levels(data$daggaoften.factor)=c("In the past","Occasionally","Once a week","Not every day but more than once a week","Every day")
levels(data$snuffnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$smokelessnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$pipesnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$cigarsnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$kreteksnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$hookahnotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$manufacturednotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$handrollednotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$othernotoften.factor)=c("numerical value on CRF","less than daily","I do not use")
levels(data$getcigs___1.factor)=c("Unchecked","Checked")
levels(data$getcigs___2.factor)=c("Unchecked","Checked")
levels(data$getcigs___3.factor)=c("Unchecked","Checked")
levels(data$getcigs___4.factor)=c("Unchecked","Checked")
levels(data$getcigs___7.factor)=c("Unchecked","Checked")
levels(data$buymyselfcigs___1.factor)=c("Unchecked","Checked")
levels(data$buymyselfcigs___2.factor)=c("Unchecked","Checked")
levels(data$buymyselfcigs___3.factor)=c("Unchecked","Checked")
levels(data$buymyselfcigs___7.factor)=c("Unchecked","Checked")
levels(data$cigsobtain___1.factor)=c("Unchecked","Checked")
levels(data$cigsobtain___2.factor)=c("Unchecked","Checked")
levels(data$cigsobtain___7.factor)=c("Unchecked","Checked")
levels(data$smokeexposurework.factor)=c("Yes","No","Do not work")
levels(data$smokeexposurehome.factor)=c("Yes","No")
levels(data$livedsmoker.factor)=c("Yes","No")
levels(data$mother.factor)=c("Yes","No")
levels(data$father.factor)=c("Yes","No")
levels(data$otherlived.factor)=c("Yes","No")
levels(data$numotherlived.factor)=c("1","2-3","4+")
levels(data$cookfuel.factor)=c("Paraffin","Gas (cylinder or piped)","Coal","Electricity","Wood","Animal Dung","Other")
levels(data$cookinhome.factor)=c("Inside where people live","Outside the house")
levels(data$heatfuel.factor)=c("Paraffin","Gas (cylinder or piped)","Coal","Electricity","Wood","Animal dung","Other")
levels(data$mbawula.factor)=c("Yes","No")
levels(data$curralcohol.factor)=c("Yes","No")
levels(data$lessweeklydrink.factor)=c("numerical value on CRF","I drink less than one drink a week")
levels(data$cage1.factor)=c("Yes","No")
levels(data$cage2.factor)=c("Yes","No")
levels(data$cage3.factor)=c("Yes","No")
levels(data$cage4.factor)=c("Yes","No")
levels(data$prison.factor)=c("Yes","No")
levels(data$currhomeless.factor)=c("Yes","No")
levels(data$shltr.factor)=c("Yes","No")
levels(data$currmine.factor)=c("Yes","No")
levels(data$mineyearsless.factor)=c("numerical value on CRF","less than a year")
levels(data$mine.factor)=c("Yes","No")
levels(data$mineyearsnumless.factor)=c("numerical value on CRF","Less than a year")
levels(data$cough.factor)=c("Yes","No")
levels(data$coughlongunits.factor)=c("days","weeks","months")
levels(data$coughspu.factor)=c("Yes","No")
levels(data$coughspuunits.factor)=c("day(s)","weeks","months")
levels(data$coughblood.factor)=c("Yes","No")
levels(data$coughbloodunits.factor)=c("days","weeks","months")
levels(data$weightloss.factor)=c("Yes","No")
levels(data$weightlossunits.factor)=c("days","weeks","months")
levels(data$asthma.factor)=c("Yes","No")
levels(data$asthmaunits.factor)=c("months","years")
levels(data$mirisk.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$strokerisk.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$cigcancer.factor)=c("True","False")
levels(data$cigs5cancer.factor)=c("True","False")
levels(data$ciglungs.factor)=c("True","False")
levels(data$cigco.factor)=c("True","False")
levels(data$cignh3.factor)=c("True","False")
levels(data$cigadd.factor)=c("True","False")
levels(data$niccancer.factor)=c("True","False")
levels(data$nicpatchmi.factor)=c("True","False")
levels(data$nicurge.factor)=c("True","False")
levels(data$nicsick.factor)=c("True","False")
levels(data$nicquit.factor)=c("True","False")
levels(data$food.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$sleep.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$tense.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$conc.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$poorsleep.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$impt.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$upbt.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$worry.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$smkurges.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$calm.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$smkbthr.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$sad.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$anger.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$snacks.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$negmoods.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$eatalot.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$satsleep.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$frust.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$hopels.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$smkthnk.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$hngry.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$enghsleep.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$attn.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$happy.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$sleeptrbl.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$cigthnk.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$thnkclr.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$thnkfood.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$meds___1.factor)=c("Unchecked","Checked")
levels(data$meds___2.factor)=c("Unchecked","Checked")
levels(data$meds___3.factor)=c("Unchecked","Checked")
levels(data$meds___4.factor)=c("Unchecked","Checked")
levels(data$meds___5.factor)=c("Unchecked","Checked")
levels(data$meds___6.factor)=c("Unchecked","Checked")
levels(data$tbtx.factor)=c("Yes","No")
levels(data$haart_enroll.factor)=c("Yes","No","I dont know")
levels(data$enrollment_form_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cotinine_reading.factor)=c("No change","Light","Moderate","Heavy","Very Heavy","Other","Invalid")
levels(data$randomisation_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$hiv_date_value.factor)=c("Value","Not Documented")
levels(data$haart_value.factor)=c("Value","Not documented","Not on HAART")
levels(data$haart_meds___1.factor)=c("Unchecked","Checked")
levels(data$haart_meds___2.factor)=c("Unchecked","Checked")
levels(data$haart_meds___3.factor)=c("Unchecked","Checked")
levels(data$haart_meds___4.factor)=c("Unchecked","Checked")
levels(data$haart_meds___5.factor)=c("Unchecked","Checked")
levels(data$haart_meds___6.factor)=c("Unchecked","Checked")
levels(data$haart_meds___7.factor)=c("Unchecked","Checked")
levels(data$haart_meds___8.factor)=c("Unchecked","Checked")
levels(data$haart_meds___9.factor)=c("Unchecked","Checked")
levels(data$haart_meds___10.factor)=c("Unchecked","Checked")
levels(data$haart_meds___77.factor)=c("Unchecked","Checked")
levels(data$cd4_value.factor)=c("Value","Indeterminate","Not documented")
levels(data$cd4_date_value.factor)=c("Value","Not documented")
levels(data$vl_value.factor)=c("Numerical Value","LDL (< 40)","LDL (< 20)","LDL","Not documented")
levels(data$vl_date_value.factor)=c("Value","Not documented")
levels(data$tbtxdate_value.factor)=c("Value","Not documented","Not on TB treatment")
levels(data$data_abstraction_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_2wk.factor)=c("2 Week Follow-up Visit CRF","Missed Follow-up Visit CRF with 2 week box checked")
levels(data$cardiac_2wk.factor)=c("Yes","No")
levels(data$stroke_2wk.factor)=c("Yes","No")
levels(data$unstable_2wk.factor)=c("Yes","No")
levels(data$skin_2wk.factor)=c("Yes","No")
levels(data$pregnant_2wk.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$bpatch_2wk.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_2wk.factor)=c("Yes","No")
levels(data$empstatus_2wk.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_2wk.factor)=c("Yes","No")
levels(data$currlive_2wk.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_2wk.factor)=c("Yes","No")
levels(data$homeless_2wk.factor)=c("Yes","No")
levels(data$mine_2wk.factor)=c("Yes","No")
levels(data$tb_2wk.factor)=c("Yes","No")
levels(data$tbmonth_2wk.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_2wk.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_2wk.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_2wk.factor)=c("Yes","No")
levels(data$hhtbmonth_2wk.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$worksmoke_2wk.factor)=c("Yes","No","Do not work","Not asked")
levels(data$livewithsmoker_2wk.factor)=c("Yes","No","Not asked")
levels(data$stillsmoke_2wk.factor)=c("Yes","No")
levels(data$lastcigunits_2wk.factor)=c("days","weeks","months")
levels(data$sincestopsmokeunits_2wk.factor)=c("days","weeks","months")
levels(data$reasons_2wk___1.factor)=c("Unchecked","Checked")
levels(data$reasons_2wk___2.factor)=c("Unchecked","Checked")
levels(data$reasons_2wk___3.factor)=c("Unchecked","Checked")
levels(data$reasons_2wk___4.factor)=c("Unchecked","Checked")
levels(data$reasons_2wk___5.factor)=c("Unchecked","Checked")
levels(data$reasons_2wk___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_2wk___0.factor)=c("Unchecked","Checked")
levels(data$patch_2wk.factor)=c("Yes","No","Not asked")
levels(data$patchtimeused_2wk.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_2wk.factor)=c("Yes","No","Not asked")
levels(data$gumtimeused_2wk.factor)=c("1 week or less","2-4 weeks")
levels(data$withdraw1_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw2_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw3_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw4_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw5_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw6_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw7_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw8_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw9_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw10_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw11_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw12_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw13_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw14_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw15_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw16_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw17_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw18_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw19_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw20_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw21_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw22_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw23_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw24_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw25_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw26_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw27_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw28_2wk.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$haart_2wk.factor)=c("Yes","No","Refused to answer","Not asked")
levels(data$haartregular_2wk.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_2wk.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$week_followup_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_1mo.factor)=c("1 Month Follow-up Visit CRF","Missed Follow-up Visit CRF with 1 month or 2nd round 1 month box checked")
levels(data$cardiac_1mo.factor)=c("Yes","No")
levels(data$stroke_1mo.factor)=c("Yes","No")
levels(data$unstable_1mo.factor)=c("Yes","No")
levels(data$skin_1mo.factor)=c("Yes","No")
levels(data$pregnant_1mo.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$pregnantpatch_1mo.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_1mo.factor)=c("Yes","No")
levels(data$empstatus_1mo.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_1mo.factor)=c("Yes","No")
levels(data$currlive_1mo.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_1mo.factor)=c("Yes","No")
levels(data$homeless_1mo.factor)=c("Yes","No")
levels(data$mine_1mo.factor)=c("Yes","No")
levels(data$tb_1mo.factor)=c("Yes","No")
levels(data$tbmonth_1mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_1mo.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_1mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_1mo.factor)=c("Yes","No")
levels(data$hhtbmonth_1mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$worksmoke_1mo.factor)=c("Yes","No","Do not work","Not asked")
levels(data$livewithsmoker_1mo.factor)=c("Yes","No","Not asked")
levels(data$stillsmoke_1mo.factor)=c("Yes","No")
levels(data$lastcigunits_1mo.factor)=c("days","weeks","months")
levels(data$sincestopsmokeunits_1mo.factor)=c("days","weeks","months")
levels(data$reasons_1mo___1.factor)=c("Unchecked","Checked")
levels(data$reasons_1mo___2.factor)=c("Unchecked","Checked")
levels(data$reasons_1mo___3.factor)=c("Unchecked","Checked")
levels(data$reasons_1mo___4.factor)=c("Unchecked","Checked")
levels(data$reasons_1mo___5.factor)=c("Unchecked","Checked")
levels(data$reasons_1mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_1mo___0.factor)=c("Unchecked","Checked")
levels(data$patch_1mo.factor)=c("Yes","No","Not asked")
levels(data$patchtimeused_1mo.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_1mo.factor)=c("Yes","No","Not asked")
levels(data$gumtimeused_1mo.factor)=c("1 week or less","2-4 weeks")
levels(data$withdraw1_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw2_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw3_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw4_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw5_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw6_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw7_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw8_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw9_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw10_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw11_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw12_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw13_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw14_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw15_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw16_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw17_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw18_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw19_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw20_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw21_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw22_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw23_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw24_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw25_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw26_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw27_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw28_1mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$haart_1mo.factor)=c("Yes","No","Refused to answer","Not asked")
levels(data$haartregular_1mo.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_1mo.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$month_followup_visit_1month_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_2mo.factor)=c("2 Month Follow-up Visit CRF","Missed Follow-up Visit CRF with 2 month or 2nd round 2 month box checked")
levels(data$cardiac_2mo.factor)=c("Yes","No")
levels(data$stroke_2mo.factor)=c("Yes","No")
levels(data$unstable_2mo.factor)=c("Yes","No")
levels(data$skin_2mo.factor)=c("Yes","No")
levels(data$pregnant_2mo.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$pregnantpatch_2mo.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_2mo.factor)=c("Yes","No")
levels(data$empstatus_2mo.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_2mo.factor)=c("Yes","No")
levels(data$currlive_2mo.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_2mo.factor)=c("Yes","No")
levels(data$homeless_2mo.factor)=c("Yes","No")
levels(data$mine_2mo.factor)=c("Yes","No")
levels(data$tb_2mo.factor)=c("Yes","No")
levels(data$tbmonth_2mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_2mo.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_2mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_2mo.factor)=c("Yes","No")
levels(data$hhtbmonth_2mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$worksmoke_2mo.factor)=c("Yes","No","Do not work","Not asked")
levels(data$livewithsmoker_2mo.factor)=c("Yes","No","Not asked")
levels(data$stillsmoke_2mo.factor)=c("Yes","No")
levels(data$lastcigunits_2mo.factor)=c("days","weeks","months")
levels(data$sincestopsmokeunits_2mo.factor)=c("days","weeks","months")
levels(data$reasons_2mo___1.factor)=c("Unchecked","Checked")
levels(data$reasons_2mo___2.factor)=c("Unchecked","Checked")
levels(data$reasons_2mo___3.factor)=c("Unchecked","Checked")
levels(data$reasons_2mo___4.factor)=c("Unchecked","Checked")
levels(data$reasons_2mo___5.factor)=c("Unchecked","Checked")
levels(data$reasons_2mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_2mo___0.factor)=c("Unchecked","Checked")
levels(data$patch_2mo.factor)=c("Yes","No","Not asked")
levels(data$patchtimeused_2mo.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_2mo.factor)=c("Yes","No","Not asked")
levels(data$gumtimeused_2mo.factor)=c("1 week or less","2-4 weeks")
levels(data$withdraw1_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw2_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw3_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw4_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw5_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw6_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw7_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw8_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw9_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw10_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw11_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw12_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw13_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw14_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw15_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw16_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw17_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw18_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw19_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw20_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw21_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw22_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw23_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw24_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw25_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw26_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw27_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw28_2mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$haart_2mo.factor)=c("Yes","No","Refused to answer","Not asked")
levels(data$haartregular_2mo.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_2mo.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$cotininevalue_2mo.factor)=c("Value","Invalid","N/A - participant on IPT")
levels(data$cotinine_reading_2mo.factor)=c("No change","Light","Moderate","Heavy","Very Heavy","Other","Invalid")
levels(data$nicalert_2mo.factor)=c("0","1","2","3","4","5","6")
levels(data$month_followup_visit_2month_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_3mo.factor)=c("3 Month Follow-up Visit CRF","Missed Follow-up Visit CRF with 3 month or 2nd round 3 month  box checked")
levels(data$cardiac_3mo.factor)=c("Yes","No")
levels(data$stroke_3mo.factor)=c("Yes","No")
levels(data$unstable_3mo.factor)=c("Yes","No")
levels(data$skin_3mo.factor)=c("Yes","No")
levels(data$pregnant_3mo.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$pregnantpatch_3mo.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_3mo.factor)=c("Yes","No")
levels(data$empstatus_3mo.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_3mo.factor)=c("Yes","No")
levels(data$currliv_3mo.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_3mo.factor)=c("Yes","No")
levels(data$homeless_3mo.factor)=c("Yes","No")
levels(data$mine_3mo.factor)=c("Yes","No")
levels(data$tb_3mo.factor)=c("Yes","No")
levels(data$tbmonth_3mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_3mo.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_3mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_3mo.factor)=c("Yes","No")
levels(data$hhtbmonth_3mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$worksmoke_3mo.factor)=c("Yes","No","Do not work","Not asked")
levels(data$livewithsmoker_3mo.factor)=c("Yes","No","Not asked")
levels(data$stillsmoke_3mo.factor)=c("Yes","No")
levels(data$lastcigunits_3mo.factor)=c("days","weeks","months")
levels(data$sincestopsmokeunits_3mo.factor)=c("days","weeks","months")
levels(data$reasons_3mo___1.factor)=c("Unchecked","Checked")
levels(data$reasons_3mo___2.factor)=c("Unchecked","Checked")
levels(data$reasons_3mo___3.factor)=c("Unchecked","Checked")
levels(data$reasons_3mo___4.factor)=c("Unchecked","Checked")
levels(data$reasons_3mo___5.factor)=c("Unchecked","Checked")
levels(data$reasons_3mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_3mo___0.factor)=c("Unchecked","Checked")
levels(data$patch_3mo.factor)=c("Yes","No","Not asked")
levels(data$patchtimeused_3mo.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_3mo.factor)=c("Yes","No","Not asked")
levels(data$gumtimeused_3mo.factor)=c("1 week or less","2-4 weeks")
levels(data$withdraw1_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw2_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw3_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw4_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw5_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw6_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw7_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw8_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw9_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw10_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw11_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw12_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw13_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw14_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw15_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw16_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw17_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw18_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw19_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw20_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw21_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw22_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw23_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw24_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw25_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw26_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw27_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$withdraw28_3mo.factor)=c("Strongly Disagree","Disagree","Feel Neutral","Agree","Strongly Agree")
levels(data$haart_3mo.factor)=c("Yes","No","Refused to answer","Not asked")
levels(data$haartregular_3mo.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_3mo.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$month_followup_visit_3month_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cardiac_6mo.factor)=c("Yes","No")
levels(data$stroke_6mo.factor)=c("Yes","No")
levels(data$unstable_6mo.factor)=c("Yes","No")
levels(data$skin_6mo.factor)=c("Yes","No")
levels(data$pregnant_6mo.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$pregnantpatch_6mo.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_6mo.factor)=c("Yes","No")
levels(data$empstatus_6mo.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_6mo.factor)=c("Yes","No")
levels(data$currlive_6mo.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_6mo.factor)=c("Yes","No")
levels(data$homeless_6mo.factor)=c("Yes","No")
levels(data$mine_6mo.factor)=c("Yes","No")
levels(data$tb_6mo.factor)=c("Yes","No")
levels(data$tbmonth_6mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_6mo.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_6mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_6mo.factor)=c("Yes","No")
levels(data$hhtbmonth_6mo.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$worksmoke_6mo.factor)=c("Yes","No","Do not work")
levels(data$livewithsmoker_6mo.factor)=c("Yes","No")
levels(data$stillsmoke_6mo.factor)=c("Yes","No")
levels(data$lastcigunits_6mo.factor)=c("days","weeks","months")
levels(data$sincestopsmokeunits_6mo.factor)=c("days","weeks","months")
levels(data$reasons_6mo___1.factor)=c("Unchecked","Checked")
levels(data$reasons_6mo___2.factor)=c("Unchecked","Checked")
levels(data$reasons_6mo___3.factor)=c("Unchecked","Checked")
levels(data$reasons_6mo___4.factor)=c("Unchecked","Checked")
levels(data$reasons_6mo___5.factor)=c("Unchecked","Checked")
levels(data$reasons_6mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_6mo___0.factor)=c("Unchecked","Checked")
levels(data$patch_6mo.factor)=c("Yes","No")
levels(data$patchtimeused_6mo.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_6mo.factor)=c("Yes","No")
levels(data$gumtimeused_6mo.factor)=c("1 week or less","2-4 weeks")
levels(data$mirisk_6mo.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$strokerisk_6mo.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$cigcancer_6mo.factor)=c("True","False")
levels(data$cigs5cancer_6mo.factor)=c("True","False")
levels(data$ciglungs_6mo.factor)=c("True","False")
levels(data$cigco_6mo.factor)=c("True","False")
levels(data$cignh3_6mo.factor)=c("True","False")
levels(data$cigadd_6mo.factor)=c("True","False")
levels(data$niccancer_6mo.factor)=c("True","False")
levels(data$nicpatchmi_6mo.factor)=c("True","False")
levels(data$nicurge_6mo.factor)=c("True","False")
levels(data$nicsick_6mo.factor)=c("True","False")
levels(data$nicquit_6mo.factor)=c("True","False")
levels(data$withdraw1_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw2_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw3_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw4_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw5_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw6_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw7_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw8_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw9_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw10_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw11_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw12_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw13_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw14_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw15_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw16_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw17_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw18_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw19_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw20_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw21_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw22_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw23_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw24_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw25_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw26_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw27_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw28_6mo.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$meds_6mo.factor)=c("Diabetes (insulin)","High blood pressure","Heart disease","Anti-depressants","Sleeping pills","None of the above")
levels(data$tbtx_6mo.factor)=c("Yes","No")
levels(data$haart_6mo.factor)=c("Yes","No","I dont know")
levels(data$haartregular_6mo.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_6mo.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$cotininevalue_6mo.factor)=c("Value","Invalid","N/A - participant on IPT")
levels(data$nicalert_6mo.factor)=c("0","1","2","3","4","5","6")
levels(data$month_followup_visit_6month_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$y_final.factor)=c("12 Month Follow-up Visit CRF","Missed Follow-up Visit CRF with 12 month box checked")
levels(data$cardiac_fina.factor)=c("Yes","No")
levels(data$stroke_final.factor)=c("Yes","No")
levels(data$unstable_final.factor)=c("Yes","No")
levels(data$skin_final.factor)=c("Yes","No")
levels(data$pregnant_final.factor)=c("Yes","No","N/A - male","Dont know / decline answering")
levels(data$pregnantpatch_final.factor)=c("Yes","No","N/A (Group A)")
levels(data$employchange_final.factor)=c("Yes","No")
levels(data$empstatus_final.factor)=c("Employed","Self-employed","Unemployed","Other")
levels(data$livechange_final.factor)=c("Yes","No")
levels(data$currlive_final.factor)=c("House","Flat","Shack","Homeless/Shelter","Other")
levels(data$prison_final.factor)=c("Yes","No")
levels(data$homeless_final.factor)=c("Yes","No")
levels(data$mine_final.factor)=c("Yes","No")
levels(data$tb_final.factor)=c("Yes","No")
levels(data$tbmonth_final.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$tbtreat_final.factor)=c("values provided","I have not started treatment for TB")
levels(data$txmonth_final.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$hhtb_final.factor)=c("Yes","No")
levels(data$hhtbmonth_final.factor)=c("01","02","03","04","05","06","07","08","09","10","11","12","99")
levels(data$stillsmoke_final.factor)=c("Yes","No")
levels(data$helpquit_final.factor)=c("Text message reminder","An application for my mobile phone","Prescription medication","Other")
levels(data$sincestopsmokeunits_final.factor)=c("days","weeks","months")
levels(data$reasons_final___1.factor)=c("Unchecked","Checked")
levels(data$reasons_final___2.factor)=c("Unchecked","Checked")
levels(data$reasons_final___3.factor)=c("Unchecked","Checked")
levels(data$reasons_final___4.factor)=c("Unchecked","Checked")
levels(data$reasons_final___5.factor)=c("Unchecked","Checked")
levels(data$reasons_final___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___1.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___2.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___3.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___4.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___5.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___6.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___7.factor)=c("Unchecked","Checked")
levels(data$methodstop_final___0.factor)=c("Unchecked","Checked")
levels(data$patch_final.factor)=c("Yes","No")
levels(data$patchtimeused_final.factor)=c("1 week or less","2-4 weeks")
levels(data$gum_final.factor)=c("Yes","No")
levels(data$gumtimeused_final.factor)=c("1 week or less","2-4 weeks")
levels(data$mirisk_final.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$strokerisk_final.factor)=c("Higher","About the same","Lower","Dont know","Refused")
levels(data$cigcancer_final.factor)=c("True","False")
levels(data$cigs5cancer_final.factor)=c("True","False")
levels(data$ciglungs_final.factor)=c("True","False")
levels(data$cigco_final.factor)=c("True","False")
levels(data$cignh3_final.factor)=c("True","False")
levels(data$cigadd_final.factor)=c("True","False")
levels(data$niccancer_final.factor)=c("True","False")
levels(data$nicpatchmi_final.factor)=c("True","False")
levels(data$nicurge_final.factor)=c("True","False")
levels(data$nicsick_final.factor)=c("True","False")
levels(data$nicquit_final.factor)=c("True","False")
levels(data$withdraw1_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw2_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw3_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw4_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw5_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw6_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw7_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw8_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw9_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw10_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw11_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw12_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw13_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw14_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw15_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw16_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw17_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw18_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw19_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw20_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw21_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw22_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw23_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw24_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw25_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw26_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw27_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$withdraw28_final.factor)=c("Strongly disagree","Disagree","Feel neutral","Agree","Strongly agree")
levels(data$meds_final.factor)=c("Diabetes (insulin)","High blood pressure","Heart disease","Anti-depressants","Sleeping pills","None of the above")
levels(data$tbtx_final.factor)=c("Yes","No")
levels(data$haart_final.factor)=c("Yes","No","I dont know")
levels(data$haartregular_final.factor)=c("Yes","No","Refused to answer")
levels(data$haartadhere_final.factor)=c("Never","Sometimes","About half the time","Most of the time","Always")
levels(data$cotininevalue_final.factor)=c("Value","Invalid","N/A - participant on IPT")
levels(data$nicalert_final.factor)=c("0","1","2","3","4","5","6")
levels(data$final_visit_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$da_source___1.factor)=c("Unchecked","Checked")
levels(data$da_source___2.factor)=c("Unchecked","Checked")
levels(data$da_source___3.factor)=c("Unchecked","Checked")
levels(data$bp1_yn.factor)=c("Yes","No")
levels(data$bp2_yn.factor)=c("Yes","No")
levels(data$bp3_yn.factor)=c("Yes","No")
levels(data$bp4_yn.factor)=c("Yes","No")
levels(data$bp5_yn.factor)=c("Yes","No")
levels(data$bp6_yn.factor)=c("Yes","No")
levels(data$bp7_yn.factor)=c("Yes","No")
levels(data$bp8_yn.factor)=c("Yes","No")
levels(data$bp9_yn.factor)=c("Yes","No")
levels(data$bp10_yn.factor)=c("Yes","No")
levels(data$bp11_yn.factor)=c("Yes","No")
levels(data$bp12_yn.factor)=c("Yes","No")
levels(data$wt1_yn.factor)=c("Yes","No")
levels(data$wt2_yn.factor)=c("Yes","No")
levels(data$wt3_yn.factor)=c("Yes","No")
levels(data$wt4_yn.factor)=c("Yes","No")
levels(data$wt5_yn.factor)=c("Yes","No")
levels(data$wt6_yn.factor)=c("Yes","No")
levels(data$wt7_yn.factor)=c("Yes","No")
levels(data$wt8_yn.factor)=c("Yes","No")
levels(data$wt9_yn.factor)=c("Yes","No")
levels(data$wt10_yn.factor)=c("Yes","No")
levels(data$wt11_yn.factor)=c("Yes","No")
levels(data$wt12_yn.factor)=c("Yes","No")
levels(data$tb1.factor)=c("Yes","No")
levels(data$tb2_yn.factor)=c("Yes","No")
levels(data$cd4_1_yn.factor)=c("Yes","No")
levels(data$cd4_2_yn.factor)=c("Yes","No")
levels(data$cd4_3_yn.factor)=c("Yes","No")
levels(data$cd4_4_yn.factor)=c("Yes","No")
levels(data$cd4_5_yn.factor)=c("Yes","No")
levels(data$cd4_6_yn.factor)=c("Yes","No")
levels(data$cd4_7_yn.factor)=c("Yes","No")
levels(data$cd4_8_yn.factor)=c("Yes","No")
levels(data$vl1_yn.factor)=c("Yes","No")
levels(data$vl2_yn.factor)=c("Yes","No")
levels(data$vl3_yn.factor)=c("Yes","No")
levels(data$vl4_yn.factor)=c("Yes","No")
levels(data$vl5_yn.factor)=c("Yes","No")
levels(data$vl6_yn.factor)=c("Yes","No")
levels(data$vl7_yn.factor)=c("Yes","No")
levels(data$vl8_yn.factor)=c("Yes","No")
levels(data$art1_yn.factor)=c("Yes","No","Notdoc")
levels(data$art2_yn.factor)=c("Yes","No")
levels(data$art3_yn.factor)=c("Yes","No")
levels(data$art4_yn.factor)=c("Yes","No")
levels(data$art5_yn.factor)=c("Yes","No")
levels(data$art6_yn.factor)=c("Yes","No")
levels(data$art7_yn.factor)=c("Yes","No")
levels(data$art8_yn.factor)=c("Yes","No")
levels(data$art9_yn.factor)=c("Yes","No")
levels(data$art10_yn.factor)=c("Yes","No")
levels(data$art11_yn.factor)=c("Yes","No")
levels(data$art12_yn.factor)=c("Yes","No")
levels(data$final_data_abstraction_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$studyend.factor)=c("Completed follow-up","Moved from study area","Lost to follow-up","Refused further contact / withdrew from study","Died","Other")
levels(data$termination_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$contact_death.factor)=c("Yes","No")
levels(data$contacttype_death.factor)=c("Parent","Sibling","Aunt or Uncle","Grandparent","Other relative","Friend")
levels(data$contactwith_death.factor)=c("Yes","No")
levels(data$mortality_complete.factor)=c("Incomplete","Unverified","Complete")


write_rds(data, "data/input/data.rds")
