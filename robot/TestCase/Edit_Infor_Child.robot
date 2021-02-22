*** Settings ***
Library          AppiumLibrary
Library          BuiltIn
Resource        ../Interface/Add_New_Child_Interface.robot
Resource        Top_Page_Keyword.robot
Resource        Top_Page_Interface.robot
Resource        ../Common/Common.robot
Resource        My_Page_Keyword.robot
Resource        My_Page_Interface.robot
Resource        ../Keyword/Infor_Child_Keyword.robot
Resource        ../Interface/Infor_Child_Interface.robot
Resource        ../Keyword/Footer_Keyword.robot
Suite Setup     Open The Application And Login successfully

*** Variables ***
${Name_Child}                     hiend
${Name}                           さん
${Birthday}                      2001 Dec 18

*** Test Cases ***
Verify that Edit Information Children Screen Is Show When Click In Name Child Field In Information Account Screen
    Click Setting Icon In Bottle Screen
    Check That My Page Screen Display Successfully
    Click Name Child Textbox In Information Account Screen
    Check That Information Children Title Is Show

#Verify that Edit Successfully When Edit Name Of Child In Information Children Screen
#    CLear Name Child In Information Children Screen
#    Input Name Child In Information Children Screen                 ${Name_Child}
#    Choose Name In Information Children Screen                      ${Name}
#    Click Save Button In Information Children Screen
#    Check Name Children Show Correctly                              ${Name_Child}      ${Name}

Verify that Edit Successfully When Edit Birthday Child In Information Children Screen
    Click Name Child Textbox In Information Account Screen
    Check That Information Children Title Is Show
    Click The Birthday Children Field In Information Children Screen
    Select Birthday In Popup        ${Birthday}
    Click Save Button In Information Children Screen
    Check Birthday Children Show Correctly In Information Children Screen
