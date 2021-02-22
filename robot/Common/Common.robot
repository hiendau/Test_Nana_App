*** Settings ***
Library    AppiumLibrary
Resource        ../Interface/Tutorial_Interface.robot
Resource        ../Keyword/Login_Keyword.robot
Resource        ../Interface/Login_Interface.robot
Resource        ../Keyword/My_Page_Keyword.robot
Resource        ../Interface/My_Page_Interface.robot
Resource        ../Keyword/Top_Page_Keyword.robot
*** Variables ***
${REMOTE_URL}            http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      9.0
${DEVICE_NAME}           emulator-5554
${Activity_NAME}         jp.knockonthedoor.healthcare.kids.MainActivity
${PACKAGE_NAME}          jp.knockonthedoor.healthcare.kids.stg
${correct_email_input}   kien.nguyen+9@codecomplete.jp
${correct_password_input}       123456aA
${email_input}         hiep.codecomplete@gmail.com
${password_input}      hiephiep123@H
*** Keywords ***
Open The Appication
    Open Application   ${REMOTE_URL}      platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME} automationName=UiAutomator2   newCommandTimeout=2500   appActivity=${Activity_NAME}    appPackage=${PACKAGE_NAME}
    Wait Until Page Contains Element       ${TUTORIAL_SCREEN_LOGIN_BUTTON}      20s

Click Login Button At Tutorial Screen
    Click Element     ${TUTORIAL_SCREEN_LOGIN_BUTTON}
    Wait Until Page Contains Element        ${LOGIN_SCREEN_EMAIL_TEXTBOX}

Click Register Button At Tutorial Screen
    Click Element       ${REGISTER_HOME_BUTTON}

Open The Application And Login successfully
    Open Application   ${REMOTE_URL}      platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME} automationName=UiAutomator2   newCommandTimeout=2500   appActivity=${Activity_NAME}    appPackage=${PACKAGE_NAME}
    Wait Until Page Contains Element       ${TUTORIAL_SCREEN_LOGIN_BUTTON}     20s
    Click Login Button At Tutorial Screen
    Click Element                           ${TUTORIAL_SCREEN_LOGIN_BUTTON}
    Wait Until Page Contains Element        ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    Input Email In Login Screen             ${correct_email_input}
    Input Password In Login Screen          ${correct_password_input}
    Click Login Button
    Wait Until Page Contains Element        ${TOP_PAGE_SCREEN_ALLOW_BUTTON}      20s
    Click Allow Button
    Wait Until Page Contains Element        ${TOP_PAGE_SCREEN_ALLOW_BUTTON}      20s
    Click Allow Button
    wait until page contains element        ${BOTTLE_SCREEN_SETTING_ICON}        10s

Open Nanacara App And Login successfully
    Open Application   ${REMOTE_URL}      platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME} automationName=UiAutomator2   newCommandTimeout=2500   appActivity=${Activity_NAME}    appPackage=${PACKAGE_NAME}
    Wait Until Page Contains Element       ${TUTORIAL_SCREEN_LOGIN_BUTTON}     20s
    Click Login Button At Tutorial Screen
    Click Element                           ${TUTORIAL_SCREEN_LOGIN_BUTTON}
    Wait Until Page Contains Element        ${LOGIN_SCREEN_EMAIL_TEXTBOX}
    Input Email In Login Screen             ${email_input}
    Input Password In Login Screen          ${password_input}
    Click Login Button
    Wait Until Page Contains Element        ${TOP_PAGE_SCREEN_ALLOW_BUTTON}      20s
    Click Allow Button
    Wait Until Page Contains Element        ${TOP_PAGE_SCREEN_ALLOW_BUTTON}      20s
    Click Allow Button
    Wait Until Page Contains Element       ${BOTTLE_SCREEN_SETTING_ICON}        10s
