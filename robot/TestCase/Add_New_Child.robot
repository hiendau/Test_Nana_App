*** Settings ***
Library         AppiumLibrary
Resource       ../Common/Common.robot
Resource       Tutorial_Interface.robot
Resource       ../Keyword/Login_Keyword.robot
Resource       ../Interface/Login_Interface.robot
Resource       ../Interface/Add_New_Child_Interface.robot
Force Tags     AddChild
Suite Setup       Open the appication
Suite Teardown      Close Application

*** Variables ***
${Valid_Email_Input}             hien.codecomplete@gmail.com
${Valid_Password_Input}          123456aA

*** Test Cases ***
Open Add New Childrenc Screen When Login Successfully
    Open the login screen
    Enter Email         ${Valid_Email_Input}
    Enter Password      ${Valid_Password_Input}
    Click Login Button
    Click Allow Button