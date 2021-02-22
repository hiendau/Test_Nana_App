*** Settings ***
Resource        ../Keyword/Common_Keyword.robot
Resource      ../Keyword/Term_Of_Service_Keyword.robot
Resource      ../Keyword/Tutorial_Keyword.robot
Resource      ../Keyword/Register_Keyword.robot
Resource      ../Keyword/Login_Keyword.robot
Suite Setup     Open The Appication

*** Test Cases ***
Verify UI Viewer Page_ Page 1
    [Documentation]     NANACA-15
    Check That ViewPager1 Display Correctly

Verify That User Cannot Swipe Left In ViewPager1
    [Documentation]     NANACA-16
    Swipe From Left To Right In Screen
    Check That User Can't Swipe Left In ViewPager1

Verify That User Can Swipe Right From ViewPager1 To ViewPager2
    [Documentation]     NANACA-17
    Swipe From Right To Left In Screen
    Check That ViewPager2 Display Correctly

Verify UI Viewer Page_ Page 2
    [Documentation]     NANACA-20
    Check That ViewPager2 Display Correctly

Verify That User Can Swipe Left From ViewPager2 To Page1
    [Documentation]     NANACA-18
    [Teardown]          Swipe From Right To Left In Screen
    Swipe From Left To Right In Screen
    Check That ViewPager1 Display Correctly

Verify That User Can Swipe Right From ViewPager2 to ViewPager3
    [Documentation]     NANACA-23
    Swipe From Right To Left In Screen
    Check That ViewPager3 Display Correctly

Verify UI Viewer Page_ Page 3
    [Documentation]     NANACA-21
    Check That ViewPager3 Display Correctly

Verify That User Can Swipe Left From ViewPager3 To ViewPager2
    [Teardown]          Swipe From Right To Left In Screen
    [Documentation]     NANACA-22
    Swipe From Left To Right In Screen
    Check That ViewPager2 Display Correctly

Verify That User Can Swipe Right From ViewPager3 to ViewPager4
    [Documentation]     NANACA-19
    Swipe From Right To Left In Screen
    Check That ViewPager4 Display Correctly

Verify UI Viewer Page_ Page 4
    [Documentation]     NANACA-26
    Check That ViewPager4 Display Correctly

Verify That User Cannot Swipe Right In ViewPager4
    [Documentation]     NANACA-25
    Swipe From Right To Left In Screen
    Check That User Cannot Swipe Right In ViewPager4 To Next ViewPager

Verify That User Can Swipe Left From ViewPager4 To ViewPager3
    [Documentation]     NANACA-24
    Swipe From Left To Right In Screen
    Check That ViewPager3 Display Correctly

Navigate to Term of Use Screen When Touching On Signup Button With Network Is Connected
    [Documentation]     NANACA-27
    [Teardown]          Click Back Button In Term Of Service Screen
    Click Sign Up Button In Tutorial Screen
    Check That Terms Of Service Display Successfully

Verify That Error Screen Displays When Touching On Signup Button With Network Isn't Connected
    [Documentation]     NANACA-28
    [Setup]             Turn Off Network
    [Teardown]          Turn On Network
    Click Sign Up Button In Tutorial Screen
    Check That Error Message When Connect Without Network

Verify That Displaying Viewer Page When User Restarts App Again In Terms Of Service Page
    [Documentation]     NANACA-29
    Quit Application
    Open Nanacara App Again
    Check That Tutorial Screen Display

Verify That Login Screen Displays When User Launch App Without Network(Not Login Yet)
    [Documentation]      NANACA-36
    [Setup]            Turn Off Network
    [Teardown]         Turn On Network
    Quit Application
    Open Nanacara App Again
    Check That Tutorial Screen Display

Navigate To Login Screen When Touching On Login Button In Tutorial Scren
    [Documentation]     NANACA-30
    Click Login Button In Tutorial Screen
    Check That Login Screen Display Successfully

Verify That Login Screen Display When User Restarts App Again In Login Screen
    [Documentation]         NANACA-31
    Quit Application
    Open Nanacara App Again
    Check That Login Screen Display Successfully




