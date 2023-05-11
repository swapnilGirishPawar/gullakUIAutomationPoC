*** Variables ***
# Page - 01 - Educational Screens
${g_nextButton}                 xpath=//*[@content-desc='nextButton']

${e_nextButtonText}=            Next
${e_getStartedButtonText}=      Get Started

# Page - 02 - Phone Screen
${g_phoneNumber}                xpath=//*[@content-desc='phoneNumberField']
${e_otpButtonText}=             Get OTP
${e_phoneScreenText}=           Welcome to Gullak
# Test Data -(test Users)
${i_phoneNumber1}=              1234567891
${i_phoneNumber2}=              1234567892
${i_phoneNumber3}=              1234567893
${i_phoneNumber4}=              1234567894
${i_phoneNumber5}=              1234567895
${i_phoneNumber6}=              1234567896
${i_phoneNumber7}=              1234567897
${i_phoneNumber8}=              1234567898
${i_phoneNumber9}=              1234567899
${i_phoneNumber0}=              1234567890
${i_userOtp}=                   221124

# Page - 03 - OTP screen
${g_otpField}                   xpath=//*[@content-desc='otpField']
${g_resendOtpButton}            xpath=//*[@content-desc='resendOtp']
${e_VerifyOtpButtonText}=       Verify OTP

# Page - 04 - Name & Age Screen
${g_nameField}                  xpath=//*[@content-desc='enterNameField']
${g_ageField}                   xpath=//*[@content-desc='enterAgeField']
${g_refferalCodeCheckbox}       xpath=//*[@content-desc='referralCheckBox']
${g_refferalCodeField}          xpath=//*[@content-desc='referralCodeField']
${i_userName}=                  Test User
${i_userAge}=                   20

${g_notaButton}                 id=com.google.android.gms:id/cancel
${e_nameScreenText}=            Fill in your details
