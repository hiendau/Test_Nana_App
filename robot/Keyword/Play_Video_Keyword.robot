*** Settings ***
Resource        ../Interface/Play_Video_Interface.robot
Library         AppiumLibrary

*** Keywords ***
Check That Play Video Screen Display Successfully
    wait until element is visible           ${PLAY_VIDEO_SCREEN_DATE_TITLE}
    wait until element is visible           ${PLAY_VIDEO_SCREEN_TIME_TITLE}
    wait until element is visible           ${PLAY_VIDEO_SCREEN_DELETE_ICON}

Click Back Button In Play Video Screen
    click element           ${PLAY_VIDEO_SCREEN_BACK_BUTTON}
    wait until element is visible           ${VIDEOS_LIST_SCREEN_SWITCH_SCREEN_BUTTON}

