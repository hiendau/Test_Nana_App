*** Settings ***
Library             AppiumLibrary
Resource            ../Common/Common.robot
Resource            ../Interface/Login_Interface.robot
Resource            ../Interface/Tutorial_Interface.robot
Resource            ../Keyword/Login_Keyword.robot
Resource            ../Keyword/Common_Keyword.robot
Suite Setup         Open The Appication
Suite Teardown      Close Application

*** Variable ***
${Correct_Email_Input}                                    kien.nguyen+9@codecomplete.jp
${InCorrect_Email_Input}                                  hien.codecomplet@gmail.com
${InCorrect_Format_Email_Input}                           hien.codecomplete.gmail.com
${Correct_Password_Input}                                 123456aA
${InCorrect_Password_Input}                               123456aQ
${Less_Than_8Character_Password_Input}                    3456aQ
${Status_Without_Network}                                 0
${Status_Network}                                         6
*** Test Cases ***
Verify Login Screen UI
   Click Login Button At Tutorial Screen
   Check Login UI Display Correctly

Verify That Error Message Show When Login Without Network
   [Teardown]       Run keywords    CLick Ok Button    AND   Turn On Network
   Turn Off Network
   Input Email In Login Screen                  ${Correct_Email_Input}
   Input Password In Login Screen               ${Correct_Password_Input}
   Click Login Button
   Check Error Message Show In Popup When Without Network

Verify That Error Message Show In Password And Email Field With Empty Email And Password Field
     Click Login Button
     Check Error Message Show In Email Field When Leave Email Field Blank
     Check Error Message Show On Password Field When Leave Password Field Blank

Verify That Error Message Show In Password Field With Empty Password
     [Teardown]              Clear Input Field
     Input Email In Login Screen              ${Correct_Email_Input}
     Click Login Button
     Check Error Message Show On Password Field When Leave Password Field Blank

Verify That Error Message Show In Email Field With Empty Email
    [Teardown]             Clear Input Field
    Input Password In Login Screen          ${Correct_Password_Input}
    Click Login Button
    Check Error Message Show On Password Field When Leave Password Field Blank


Verify That Error Message Displays When User Input Less Than 8 Characters Into Password Field
    [Teardown]              Clear Input Field
    Input Email In Login Screen             ${Correct_Email_Input}
    Input Password In Login Screen          ${Less_Than_8Character_Password_Input}
    Click Login Button
    Check Error Message Show On Password Field When Enter Less Than 8 Character Into Password Field

Verify That Error Message Show In Email Field When Enter InCorrect Format In Email Field
    [Teardown]              Clear Input Field
    Input Email In Login Screen             ${InCorrect_Format_Email_Input}
    Input Password In Login Screen          ${Correct_Password_Input}
    Click Login Button
    Check Error Message Show in Email Field When Enter Incorrect Format Email Field

Verify That Error Message Show In Email Field When Enter InCorrect Username
    [Teardown]                               Click Ok Button
    Input Email In Login Screen              ${InCorrect_Email_Input}
    Input Password In Login Screen           ${Correct_Password_Input}
    Click Login Button
    Check Error Message Pop Up When Email Or Password Incorrect
Verify That Error Message Show In Password Field When Enter InCorrect Password
    [Teardown]                          Click Ok Button
    Input Email In Login Screen         ${Correct_Email_Input}
    Input Password In Login Screen      ${InCorrect_Password_Input}
    Click Login Button
    Check Error Message Pop Up When Email Or Password Incorrect

Verify That Error Message Show When Enter InCorrect Username And Password
    [Teardown]                            Click Ok Button
    Input Email In Login Screen           ${InCorrect_Email_Input}
    Input Password In Login Screen        ${InCorrect_Password_Input}
    Click Login Button
    Check Error Message Pop Up When Email Or Password Incorrect

Verify That Dialog Box 'Allow Take The Picture And Record Video' Pop Up When Email And Password Enter Correctly
    Input Email In Login Screen         ${Correct_Email_Input}
    Input Password In Login Screen      ${Correct_Password_Input}
    Click Login Button
    Check Allow Take Picture And Record Video Dialog Box Pop Up

Verify That Dialog Box 'Allow Record Audio' Pop Up When Click Ok Button In 'Allow Take The Picture And Record Video' Dialog Box
    Click Allow Button
    Check Allow Record Audio Dialog Box Pop Up

Home Page Display When Click Allow Record Audio Button
    Click Allow Button
    Check Home Screen Show
