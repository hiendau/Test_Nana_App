*** Settings ***
Library    AppiumLibrary
Library    RequestsLibrary
Library    String
Library         Collections
Library         json
Library         JSONLibrary
Suite Setup     Open The Application And Login successfully
Resource        ../Keyword/Get_User_Family_keyword.robot

*** Test Cases ***
Check That Get User Family Show Correctly
    Get API User Family
    Get User Family In App
    Check That Get API User Family Show Correctly



