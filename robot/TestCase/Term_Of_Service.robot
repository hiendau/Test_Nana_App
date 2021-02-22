*** Settings ***
Library             AppiumLibrary
Resource       ../Common/Common.robot
Resource       ../Keyword/Common_Keyword.robot
Resource       ../Keyword/Tutorial_Keyword.robot
Suite Setup         Open The Appication
Resource      ../Keyword/Term_Of_Service_Keyword.robot
Resource      ../Keyword/Register_Keyword.robot
Resource      ../Interface/Common_Interface.robot
Resource       ../Keyword/Tutorial_Keyword.robot

*** Test Cases ***
Verify UI Of Term Of Service Screen
    [Documentation]      NANACA-38
    Click Sign Up Button In Tutorial Screen
    Check UI Of Term Of Service Screen Show Correctly

Verify That User Can Go Back Tutorial Screen When Touches On Back Button In Terms Of Service Screen (Android Only)
    [Documentation]      NANACA-41
    [Teardown]      Click Sign Up Button In Tutorial Screen
    Click Back Button In Term Of Service Screen
    Check That Tutorial Screen Display

Verify that user can go back previous screen when touches on Back button of application
    [Documentation]      NANACA-992
    [Teardown]      Click Sign Up Button In Tutorial Screen
    Click Back Button In Application
    Check That Tutorial Screen Display

Verify That Displaying Terms Of Use Screen When Home App And Launch App Again
    [Documentation]      NANACA-40
    Background App
    Check That Term Of Service Screen Display

Verify Navigate To Email Address Registration Screen When Touching On Agree Button In Term Of Service Screen
    [Documentation]      NANACA-39
    Click Agree Button In Term Of Service Screen
    Check Register Screen Display Successfully




