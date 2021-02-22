*** Settings ***
Library         AppiumLibrary
Resource        ../Interface/Select_Child_Interface.robot

*** Keywords ***
Check That Select Child Screen Display Successfully
    wait until element is visible       ${SELECT_CHILD_SCREEN_TITLE}        20s

Click Back Button In Select Child Screen
    click element                       ${SELECT_CHILD_SCREEN_BACK_BUTTON}

