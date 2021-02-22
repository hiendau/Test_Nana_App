*** Settings ***
Library         AppiumLibrary
Library         RequestsLibrary
Library         String
Library         Collections
Library         JSONLibrary
Test Setup    Run keywords
...    Open The Application And Login successfully
...    Get API User Family
Resource        ../Keyword/Get_List_Child_Of_Family_Keyword.robot
Resource        My_Page_Interface.robot


*** Test Cases ***
Check List Child Of Family Show Correctly
    Get API List Child Of Family
    Click In Setting Icon In Bottle Screen
    Check List Child Show Correctly


