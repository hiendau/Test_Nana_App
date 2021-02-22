*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Interface/Tutorial_Interface.robot
Resource        ../Keyword/Register_Keyword.robot
Resource        ../Interface/Register_Interface.robot
Force Tags      register
Suite Setup     Open the appication

*** Variables ***
${Valid_Password_Input}                  KKkk11031994
${Valid_Email_Input}                     hien.codecomplete@gmail.com
${Incorrect_Format_Emal_Input}           hien.codecompletegmail.com

*** Test Cases ***
Verify That Open Terms Of Service When Click Register Button
   Click Register Button At Tutorial Screen
   Check Terms Of Service Screen Show

Verify That Tutorial Image Is Show When Click Agree Button
    Click Agree Button
    Check Tutorial Image is Showed

Verify That Register Screen Display When Click Cancel Icon
    Click Cancel Icon
    Check That Register Screen Display

Verify Error Message All Field Show When Do Not Entering All Field
     Swipe Up In Screen
     Click Next Button
     Check Error Message Show All Field When Leave All Field Blank

Verify Error Message Email Field Show When Do Not Entering Email
    [Teardown]  Clear Password And Confirm Password
    Input Password In Register Screen              ${Valid_Password_Input}
    Input Confirm Password In Register Screen      ${Valid_Password_Input}
    Click Next Button
    Check Error Message Show On Password Field When Leave Password Field Blank

Verify Error Message Email Field And Confirm Password Field Show When Do Not Entering Password
    [Teardown]  Clear Email And Confirm Password
    Input Email In Register Screen                 ${Valid_Email_Input}
    Input Confirm Password In Register Screen      ${Valid_Password_Input}
    Click Next Button
    Check Error Message Show On Password Field When Leave Password Field Blank
#sai
#Verify Error Message Email Field And Password Field Show When Do Not Entering Confirm Password
#    Input Email In Register Screen             ${Valid_Email_Input}
#    Input Password In Register Screen           ${Valid_Password_Input}
#    Click Next Button
#    Given Check Error Message Show On Confirm Password Field When Leave Password Field Blank







