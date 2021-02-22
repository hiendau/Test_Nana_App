*** Settings ***
Library         AppiumLibrary
Library         String
Library         BuiltIn
Resource        ../Interface/Top_Page_Interface.robot
Resource        ../Interface/Management_Interface.robot
Resource        ../Interface/Footer_Interface.robot
Resource        ../Interface/Videos_List_Interface.robot
Resource        ../Interface/Play_Video_Interface.robot
*** Keywords ***
Check That UI List of Seizure Recordings Video Screen When Don't Have Video Show Correctly
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_VIDEOS_LIST_TEXT_BOX}
    wait until element is visible       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    Check Message Display When Don't Have Video In Videos List Screen
    wait until element is visible       ${BOTTLE_SCREEN_HOSPITAL_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_HEART_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_SETTING_ICON}

Check That UI List Of Seizure Recordings Video Screen Display Correctly Include Small Thumbnail And Infor Show Correctly
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_RECORD_VIDEO_LIST}
    wait until element is visible       ${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RECORD_TIME}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_MEMO}
    wait until element is visible       ${BOTTLE_SCREEN_HOSPITAL_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_HEART_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_SETTING_ICON}

Check That Video List Screen Display Correctly
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_RECORD_VIDEO_LIST}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RECORD_TIME}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_MEMO}
    wait until element is visible       ${BOTTLE_SCREEN_HOSPITAL_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_HEART_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_SETTING_ICON}

Check That UI List Of Seizure Recordings Video Screen With Only Thumbnail Show Correctly
    wait until element is visible       ${VIDEOS_LIST_SCREEN_ONLY_LIST_THUMBNAIL}
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_VIDEOS_LIST_TEXT_BOX}
    wait until element is visible       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    wait until element is visible       ${BOTTLE_SCREEN_HOSPITAL_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_HEART_ICON}
    wait until element is visible       ${BOTTLE_SCREEN_SETTING_ICON}
    
Click On Avatar In Left Top Videos List Screen
    click element       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}

Check Message Display When Don't Have Video In Videos List Screen
    FOR    ${i}         IN  RANGE       10
    click element           ${VIDEOS_LIST_SCREEN_PREVIOUS_YEAR_BUTTON}
    ${status}       run keyword and return status       element should be visible               ${VIDEOS_LIST_SCREEN_MESSAGE_CONTENT_WHEN_DON'T_HAVE_VIDEO}
    Run Keyword If      '${status}'=='True'                  Exit For Loop
    END

Click Next Year Button In Videos List Screen
    FOR    ${i}         IN  RANGE       1
    click element       ${VIDEOS_LIST_SCREEN_NEXT_YEAR_BUTTON}
     END

Click Previous Year Button In Videos List Screen
    wait until element is visible           ${VIDEOS_LIST_SCREEN__LIST_THUMBNAIL}
    FOR    ${i}        IN  RANGE       1
    click element       ${VIDEOS_LIST_SCREEN_PREVIOUS_YEAR_BUTTON}
    sleep       1s
     END


Click Switch Screen Button In Videos List Screen
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SWITCH_SCREEN_BUTTON}          10s
    click element                       ${VIDEOS_LIST_SCREEN_SWITCH_SCREEN_BUTTON}


CLick Multi Select Mode Icon In Videos List Screen
    click element                           ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}

Check That Multi Select Mode Dialog Display Correctly
    wait until element is visible          ${VIDEOS_LIST_SCREEN_DR_SHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until element is visible           ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until element is visible           ${VIDEOS_LIST_SCREEN_DR_UNSHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until element is visible           ${VIDEOS_LIST_SCREEN_SD_CARD_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until element is visible          ${VIDEOS_LIST_SCREEN_CANCEL_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}

Click In Dr Share Button In Dialog
    wait until element is visible           ${VIDEOS_LIST_SCREEN_DR_SHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    click element                           ${VIDEOS_LIST_SCREEN_DR_SHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}

Click In Dr UnShare Button In Dialog
    wait until element is visible           ${VIDEOS_LIST_SCREEN_DR_UNSHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    click element                           ${VIDEOS_LIST_SCREEN_DR_UNSHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}

Click In Re Upload To Server Button In Dialog
    wait until element is visible          ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    click element                          ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}

Click X Button In Dr.Share Dialog
    click element                       ${VIDEOS_LIST_SCREEN_X_BUTTON_DIALOG}
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}

Choose One Video In Dr.Share Dialog
    ${TIME_FIRST_VIDEO}=        get text        ${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_DR_SHARE_DIALOG}
    log to console              ${TIME_FIRST_VIDEO}
    set global variable         ${TIME_FIRST_VIDEO}
    click element                       ${VIDEOS_LIST_SCREEN_DR_FIRST_VIDEO_DIALOG}

Choose Two Video In Dr.Share Dialog
    ${TIME_FIRST_VIDEO}=        get text        ${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_DR_SHARE_DIALOG}
    log to console              ${TIME_FIRST_VIDEO}
    set global variable         ${TIME_FIRST_VIDEO}
    ${TIME_SECOND_VIDEO}=        get text            ${VIDEOS_LIST_SCREEN_DR_TIME_SECOND_VIDEO_DR_SHARE_DIALOG}
    set global variable         ${TIME_SECOND_VIDEO}
    click element                       ${VIDEOS_LIST_SCREEN_DR_FIRST_VIDEO_DIALOG}
    click element                       ${VIDEOS_LIST_SCREEN_DR_SECOND_VIDEO_DIALOG}

CLick V Button In Dr.Share Dialog
    wait until element is visible       ${VIDEOS_LIST_SCREEN_V_BUTTON_DIALOG}
    click element                       ${VIDEOS_LIST_SCREEN_V_BUTTON_DIALOG}

Check That Select Video Mode Dialog Disappear
    wait until page does not contain element           ${VIDEOS_LIST_SCREEN_DR_SHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until page does not contain element            ${VIDEOS_LIST_SCREEN_DR_UNSHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until page does not contain element            ${VIDEOS_LIST_SCREEN_CANCEL_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until page does not contain element            ${VIDEOS_LIST_SCREEN_SD_CARD_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}
    wait until page does not contain element            ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}

Check That Confirm Share Dialog Display Correctly
    wait until element is visible       ${VIDEO_LIST_SCREEN_CONFIRM_QUESTION_IN_COMFIRM_SHARE_DIALOG}
    wait until element is visible       ${VIDEO_LIST_SCREEN_SHARE_BUTTON_IN_COMFIRM_SHARE_DIALOG}
    wait until element is visible       ${VIDEO_LIST_SCREEN_CANCEL_BUTTON_IN_COMFIRM_SHARE_DIALOG}

CLick Share Button In Confirm Share Dialog
    wait until element is visible       ${VIDEO_LIST_SCREEN_SHARE_BUTTON_IN_COMFIRM_SHARE_DIALOG}       20s
    click element                       ${VIDEO_LIST_SCREEN_SHARE_BUTTON_IN_COMFIRM_SHARE_DIALOG}

CLick Close Button In Shared Dialog
    wait until element is visible       ${VIDEO_LIST_SCREEN_CLOSE_BUTTON_IN_SHARED_DIALOG}          20s
    click element                       ${VIDEO_LIST_SCREEN_CLOSE_BUTTON_IN_SHARED_DIALOG}

Check That Dr share Text Box Display In Thumbnail Video In Video List Screen
    ${replace}          replace string      ${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_1}           xx          ${TIME_FIRST_VIDEO}
    FOR   ${i}          IN RANGE        5
    ${status}           Run keyword run keyword and return status           element should be visible        ${replace}
    run keyword if           '${status}'== 'True'           exit for loop
    run keyword if            '${status}'== 'False'          swipe               719             1100        745         766
    END

Check That Dr share Text Box Display In Thumbnail Videos In Video List Screen
    ${replace1}          replace string      ${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_1}           xx          ${TIME_FIRST_VIDEO}
    FOR   ${i}          IN RANGE        5
    ${status}           run keyword and return status           element should be visible       ${replace1}
    run keyword if           '${status}'== 'True'           exit for loop
    run keyword if            '${status}'== 'False'          swipe               719             1100        745         766
    END
    ${replace2}          replace string      ${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_2}           zz          ${TIME_SECOND_VIDEO}
    FOR   ${i}          IN RANGE        5
    ${status}           run keyword and return status           element should be visible       ${replace2}
    run keyword if           '${status}'== 'True'           exit for loop
    run keyword if            '${status}'== 'False'          swipe               719             1100        745         766
    END

Check That Dr.Share Dialog Display Correctly
    wait until element is visible       ${VIDEOS_LIST_SCREEN_X_BUTTON_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_SHARE_TITLE_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_SHARE_TEXT1_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_V_TEXTBOX_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_TEXT2_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DATE_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RECORD_TIME}
    wait until element is visible       ${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_MEMO}

Check That Dr.UnShare Dialog Display Correctly
    wait until element is visible       ${VIDEOS_LIST_SCREEN_X_BUTTON_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_UNSHARE_TITLE_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_UNSHARE_TEXT1_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_V_BUTTON_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_TEXT2_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DATE_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RECORD_TIME}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_MEMO}

Check That Re Upload To Server Dialog Display Correctly
    wait until element is visible       ${VIDEOS_LIST_SCREEN_X_BUTTON_DIALOG}
    wait until element is visible        ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_TITLE_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_TEXT1_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_V_BUTTON_DIALOG}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_DR_TEXT2_DIALOG}


Check That Status Of Video Beside Small Thumbnail
    wait until element is visible           ${VIDEOS_LIST_SCREEN_PREPARE_UPLOADING_TEXTBOX}                     20s
    wait until element is visible           ${VIDEOS_LIST_SCREEN_UPLOADING_TEXTBOX}                             1000s
    wait until element is visible           ${VIDEOS_LIST_SCREEN_UPLOADEDD_TEXTBOX}                             1000s

CLick On Thumbnail Screen
    sleep    3s
    click element                      ${VIDEO_LIST_SCREEN_THUMBNAIL}


Check That Thumbnail Mode Display Correctly
   wait until element is visible       ${VIDEOS_LIST_SCREEN_ONLY_LIST_THUMBNAIL}        10s

Check That Thumbnail And Infor Show Correctly
    wait until element is visible       ${MANAGEMENT_SCREEN_TITLE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_AVATAR_CHILD}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}
    wait until element is visible       ${MANAGEMENT_SCREEN_VIDEOS_LIST_TEXT_BOX}
    wait until element is visible       ${MANAGEMENT_SCREEN_SEIZURE_STATUS_TEXT_BOX}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_RECORD_VIDEO_LIST}
    wait until element is visible       ${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_RECORD_TIME}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}
    wait until element is visible       ${VIDEOS_LIST_SCREEN_MEMO}



Click On Calendar In Central Of Video List Screen
    click element               ${VIDEOS_LIST_SCREEN_CALENDAR_TEXTBOX}

Check That Calendar Dialog Display
    wait until element is visible           ${VIDEOS_LIST_SCREEN_DONE_BUTTON_IN_DIALOG}

Click Prevous Month Text Box In Dialog In Video List Screen
    click element       ${VIDEOS_LIST_SCREEN_PREVIOUS_MONTH_IN_DIALOG}

Click Current Month Text Box In Dialog In Video List Screen
    wait until element is visible       ${VIDEOS_LIST_SCREEN_CURRENT_MONTH_IN_DIALOG}
    click element                       ${VIDEOS_LIST_SCREEN_CURRENT_MONTH_IN_DIALOG}

Click Done Button In Dialog In Video List Screen
    click element       ${VIDEOS_LIST_SCREEN_DONE_BUTTON_IN_DIALOG}

Check That Video Display In Previous Month
    wait until element is visible           ${VIDEOS_LIST_SCREEN__LIST_THUMBNAIL}

Check That Video Display In Current Month
    wait until element is visible           ${VIDEOS_LIST_SCREEN__LIST_THUMBNAIL}

Check That Uploading Video In Video List Screen
    wait until element is visible           ${VIDEO_LIST_SCREEN_UPLOAD_STATUS_TEXTBOX}
    wait until element is visible           ${VIDEO_LIST_SCREEN_1_VIDEO_UPLOAD_TEXTBOX}
    FOR    ${i}         IN RANGE    10
    ${status}           run keyword and return status           element should be visible            ${VIDEO_LIST_SCREEN_PROGESS_BAR_ICON_IN_THUMBNAIL}
    run keyword if      '${status}'=='True'         exit for loop
    run keyword if      '${status}'=='False'         swipe               719             1100        745         766
    END

Check That Video Upload Completely
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_PROGESS_BAR_ICON_IN_THUMBNAIL}              1000s
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_UPLOAD_STATUS_TEXTBOX}                      1000s
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_1_VIDEO_UPLOAD_TEXTBOX}                     1000s
    wait until element is visible                       ${VIDEOS_LIST_SCREEN_UPLOADEDD_TEXTBOX}

Check That Uploading Many Video In Video List Screen
    wait until element is visible           ${VIDEO_LIST_SCREEN_UPLOAD_STATUS_TEXTBOX}
    wait until element is visible           ${VIDEO_LIST_SCREEN_2_VIDEO_UPLOAD_TEXTBOX}
    FOR    ${i}         IN RANGE    10
    ${status}           run keyword and return status           element should be visible            ${VIDEO_LIST_SCREEN_PROGESS_BAR_ICON_IN_THUMBNAIL}
    run keyword if      '${status}'=='True'         exit for loop
    run keyword if      '${status}'=='False'         swipe               719             1100        745         766
    END

Check That Many Video Upload Completely
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_PROGESS_BAR_ICON_IN_THUMBNAIL}              1000s
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_UPLOAD_STATUS_TEXTBOX}                      1000s
    wait until page does not contain element            ${VIDEO_LIST_SCREEN_2_VIDEO_UPLOAD_TEXTBOX}                     1000s
    wait until element is visible                       ${VIDEOS_LIST_SCREEN_UPLOADEDD_TEXTBOX}

Get List Video Of Current Date In Video List Screen
    ${count}	Get Matching Xpath Count	${VIDEOS_LIST_SCREEN__LIST_VIDEO}
    set global variable         ${count}


