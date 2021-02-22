*** Settings ***
Library         AppiumLibrary
Library         String
Library         BuiltIn
*** Keywords ***
Check That Management Screen Display
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE_OF_SEIZURE_TYPES}

Click On Seizure Status Tab In Management Screen
    click element                       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE_OF_SEIZURE_TYPES}

Click On Videos List Tab In Management Screen
    wait until element is visible       ${MANAGEMENT_SCREEN_VIDEOS_LIST_TEXT_BOX}
    click element                        ${MANAGEMENT_SCREEN_VIDEOS_LIST_TEXT_BOX}





