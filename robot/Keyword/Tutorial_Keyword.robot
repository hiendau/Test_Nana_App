*** Settings ***
Library         AppiumLibrary
Library         String
Library         BuiltIn
Resource        ../Interface/Tutorial_Interface.robot

*** Keywords ***
Click Login Button In Tutorial Screen
    click element       ${TUTORIAL_SCREEN_LOGIN_BUTTON}
    sleep   2s

Check That Tutorial Screen Display
    wait until element is visible       ${TUTORIAL_SCREEN_SIGNUP_BUTTON}        10s
    wait until element is visible       ${TUTORIAL_SCREEN_LOGIN_BUTTON}

Click Sign Up Button In Tutorial Screen
    click element       ${TUTORIAL_SCREEN_SIGNUP_BUTTON}
    sleep    3s

Check That View Pager Screen Display Successfully
    wait until element is visible       ${TUTORIAL_SCREEN_SIGNUP_BUTTON}            50s
    wait until element is visible       ${TUTORIAL_SCREEN_LOGIN_BUTTON}             50s

Swipe From Right To Left In Screen
     swipe       910     579         200      610

Swipe From Left To Right In Screen
    swipe              200      610     910     579

Check That User Can't Swipe Left In ViewPager1
    element should be visible            ${IMAGE1}

Check That ViewPager1 Display Correctly
    element should be visible           ${IMAGE1}

Check That ViewPager2 Display Correctly
    element should be visible           ${IMAGE2}

Check That User Can Swipe Left From ViewPager4 To ViewPager3
    element should be visible           ${IMAGE3}

Check That ViewPager3 Display Correctly
    element should be visible             ${IMAGE3}

Check That ViewPager4 Display Correctly
    element should be visible             ${IMAGE4}

Check That User Cannot Swipe Right In ViewPager4 To Next ViewPager
    element should be visible             ${IMAGE4}

