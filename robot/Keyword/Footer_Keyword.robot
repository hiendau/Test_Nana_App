*** Settings ***
Library         AppiumLibrary
Resource        ../Interface/Management_Interface.robot
*** Keywords ***
Click In Heart Icon In Bottle Screen
    click element       ${BOTTLE_SCREEN_HEART_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}          10s

Click In O'clock Icon In Bottle Screen
    wait until element is visible           ${BOTTLE_SCREEN_O'CLOCK_ICON}
    click element                           ${BOTTLE_SCREEN_O'CLOCK_ICON}
    wait until element is visible           ${TOP_PAGE_SCREEN_TITLE}

Click In Setting Icon In Bottle Screen
    click element       ${BOTTLE_SCREEN_SETTING_ICON}

Click In Hospital Icon In Bottle Screen
    click element       ${BOTTLE_SCREEN_HOSPITAL_ICON}