*** Settings ***
Resource    Android/../onboardingLocators.robot


*** Variables ***
#Page 01 - Home Screen
${g_amt1Header}             xpath=//*[@content-desc='amt1Header']
${g_amt2Header}             xpath=//*[@content-desc='amt1Header']
${g_amt3Header}             xpath=//*[@content-desc='amt1Header']
${g_customHeader}           xpath=//*[@content-desc='customHeader']
${letsGoButton}             xpath=//*[@content-desc='nextbutton']
${e_hiUserText}             xpath=//*[@content-desc='hiUserText']
${e_letsSavetext}           xpath=//*[@content-desc='letsSavetext']
${e_saveDailyHeader}        xpath=//*[@content-desc='saveDailyHeader']
${e_saveDailySubtext}       xpath=//*[@content-desc='saveDailySubtext']
${e_growYourMoneyText}      xpath=//*[@content-desc='growyourMoneyText']
${e_trustMarker}            xpath=//*[@content-desc='trustMarker']
#Page 02 - DS Setup Screen
${g_freqChangeButton}       xpath=//*[@content-desc='frequencyChangeButton']
${g_decreaseButton}         xpath=//*[@content-desc='decreaseButton']
${g_increaseButton}         xpath=//*[@content-desc='increaseButton']
${g_yearChip1}              xpath=//*[@content-desc='yearChip1']
${g_yearChip2}              xpath=//*[@content-desc='yearChip2']
${g_yearChip3}              xpath=//*[@content-desc='yearChip3']
${g_yearChip4}              xpath=//*[@content-desc='yearChip4']
${startSavingButton}        xpath=//*[@content-desc='nextButton']
${e_setupSavingsHeader}     xpath=//*[@content-desc='setupSavingsHeader']
${e_dsSetupSubtext1}        xpath=//*[@content-desc='dsSetupSubtext1']
${e_dsSetupSubtext2}        xpath=//*[@content-desc='dsSetupSubText2']
${e_dsPieChart}             xpath=//*[@content-desc='dsPieChart']
${e_savingsAmtText}         xpath=//*[@content-desc='savingsAmtText']
${e_earningsAmtText}        xpath=//*[@content-desc='earningsAmtText']
${e_carouselButton}         xpath=//*[@content-desc='carouselButton']
