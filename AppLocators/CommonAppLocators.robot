*** Variables ***
#Desired Capabilities - Android
${server}                       http://localhost:4723/wd/hub
${platform}                     Android
${platform_version}             12
${device}                       ZTLRC6LBBUWC5T8T
${app_package} =                com.finternet.plutus
${app_activity} =               com.finternet.plutus.MainActivity
${appium}                       appium
${autoGrantPermissions}         true
${automationName}               UiAutomator2
${apkPath}                      /Users/admin/Desktop/Proj_Gullak/test_gullak/Resources/APK/debug.apk

#Desired Capabilities BrowserStack
${browserstack.user}            bhavanav_9sRIDQ
${browserstack.key}             Lh8QX3iRzcnK4wxvH7Rq
${appURL}                       bs://32efb2291c9cb64d6cd9e461071588b1a0810484
${device_name}                  ZTLRC6LBBUWC5T8T
${os_version}                   12
${project}                      Gullak Project
${build}                        RobotFramework
${Bs_name}                      M1
${Bs_Server}                    http://${browserstack.user}:${browserstack.key}@hub.browserstack.com:80/wd/hub
${paytmintentapp}               bs://0763464c0e7a23c80fad290656695fdce803d392
${browserstack.video}           true
${intentAppPackage} =           com.example.uplilistensample
${intentAppActivity} =          com.example.uplilistensample.MainActivity
${cloud_partner}                Browserstack
${browserstack.idleTimeout}     160
${osVersionBS}                  9.0
${deviceNameBS}                 Xiaomi Redmi Note 7

#Local Appium capabilities for parellel testing on multiple devices

${uat_token}                    a53a0a7c55734948bec1c4d26a658046
${base_url_uat}                 https://uat.api.gullak.money
