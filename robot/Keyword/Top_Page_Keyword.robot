*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Interface/Top_Page_Interface.robot
Resource        ../Interface/Management_Interface.robot
Resource        ../Interface/Dr_Site_Interface.robot


*** Keywords ***
Check That Top Page Screen Display Successfully
    wait until element is visible       ${TOP_PAGE_SCREEN_TITLE}        10s

Check That Dr.Site Screen Display Successfully
    wait until element is visible       ${DR_SITE_SCREEN_TITLE}         10s

Record Video In Top Page Screen
    wait until element is visible           ${TOP_PAGE_SCREEN_RECORD_VIDEO}
    click element                           ${TOP_PAGE_SCREEN_RECORD_VIDEO}

Click Save Button
    click element                           ${TOP_PAGE_SCREEN_RECORD_VIDEO_SAVE_BUTTON}

Click Keep Record Button
    wait until element is visible           ${TOP_PAGE_SCREEN_KEEP_RECORD_BUTTON}
    click element                           ${TOP_PAGE_SCREEN_KEEP_RECORD_BUTTON}
