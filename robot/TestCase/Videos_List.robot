*** Settings ***
Resource        ../Common/Common.robot
Resource        ../Keyword/Videos_List_Keyword.robot
Resource        ../Keyword/Footer_Keyword.robot
Resource        ../Keyword/Common_Keyword.robot
Resource        ../Keyword/Top_Page_Keyword.robot
Resource        ../Keyword/Select_Child_Keyword.robot
Resource        ../Keyword/Management_Keyword.robot
Resource        ../Keyword/Play_Video_Keyword.robot
Suite Setup     Open Nanacara App And Login successfully

*** Test Cases ***
Check UI List Of Seizure Recordings Video Screen (Small Thumbnail And Infor)
     [Documentation]      NANACA-996
     Click In Heart Icon In Bottle Screen
     Click On Videos List Tab In Management Screen
     Check That UI List Of Seizure Recordings Video Screen Display Correctly Include Small Thumbnail And Infor Show Correctly

#Check UI List Of Seizure Recordings Video Screen (Don't Have Video)
#    [Documentation]      NANACA-995
#    [Teardown]      Click Next Year Button In Videos List Screen
#    Click Previous Year Button In Videos List Screen
#    Check Message Display When Don't Have Video In Videos List Screen
#
#Check UI List of seizure recordings video screen (only thumbnail)
#    [Documentation]      NANACA-1013
#    [Teardown]          Click Switch Screen Button In Videos List Screen
#    Click Switch Screen Button In Videos List Screen
#    sleep   3s
#    Check That UI List Of Seizure Recordings Video Screen With Only Thumbnail Show Correctly
#
#Check Behavior Of Status When Uploading Video
#    [Documentation]      NANACA-1018
#    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
#    AND Click In Video Save Setting In My Page Screen
#    AND Turn On Save Video To Server In My Page Screen
#    Click In O'clock Icon In Bottle Screen
#    Record Video In Top Page Screen
#    sleep  30s
#    Click Save Button
#    Click Keep Record Button
#    Click On Videos List Tab In Management Screen
#    Check That Status Of Video Beside Small Thumbnail
#
#Check Transition When Touch On Icon O'clock In Tab Footer
#    [Documentation]      NANACA-997
#    [Teardown]          Click In Heart Icon In Bottle Screen
#    Click In O'clock Icon In Bottle Screen
#    Check That Top Page Screen Display Successfully
#
#Check Transition When Touch On Icon Hospital In Tab Footer
#    [Documentation]      NANACA-999
#    [Teardown]          Click In Heart Icon In Bottle Screen
#    Click In Hospital Icon In Bottle Screen
#    Check That Dr.Site Screen Display Successfully
#
#Check Transition When Touch On Icon Setting In Tab Footer
#    [Documentation]      NANACA-999
#     [Teardown]          Click In Heart Icon In Bottle Screen
#     Click In Setting Icon In Bottle Screen
#     Check That My Page Screen Display Successfully
#
#Check Transition When Touch On Avatar In Left Top Screen
#    [Documentation]      NANACA-998
#    [Teardown]      Click Back Button
#    Click On Avatar In Left Top Videos List Screen
#    Check That Select Child Screen Display Successfully
#
#Check Transition When Touch On Seizure Status Tab
#    [Documentation]      NANACA-1001
#    [Teardown]      Click On Videos List Tab In Management Screen
#    Click On Seizure Status Tab In Management Screen
#    Check That Management Screen Display
#
#Check Navigate Dialog When Tounch On Multi Select Mode "..." In Top Right Screen
#    CLick Multi Select Mode Icon In Videos List Screen
#    Check That Multi Select Mode Dialog Display Correctly
#
#Check Navigate Dr.Share Dialog When Tounch On Dr.Share Button In Dialog
#    [Documentation]      NANACA-1002
#    [Teardown]           Click X Button In Dr.Share Dialog
#    Click In Dr Share Button In Dialog
#    Check That Dr.Share Dialog Display Correctly
#
#Check Navigate Dr.UnShare Dialog When Tounch On Dr.UnShare Button In Dialog
#    [Documentation]      NANACA-1003
#    [Teardown]           Click X Button In Dr.Share Dialog
#    CLick Multi Select Mode Icon In Videos List Screen
#    Click In Dr UnShare Button In Dialog
#    Check That Dr.UnShare Dialog Display Correctly
#
#Check Navigate Re Upload To Server Dialog When Tounch On Re Upload To Server Button In Dialog
#    [Documentation]      NANACA-1004
#    [Teardown]           Click X Button In Dr.Share Dialog
#    CLick Multi Select Mode Icon In Videos List Screen
#    Click In Re Upload To Server Button In Dialog
#    Check That Re Upload To Server Dialog Display Correctly
#
#Check Transition When Touch On Video's Thumbnail
#    [Documentation]      NANACA-1005
#    [Teardown]          Click Back Button In Play Video Screen
#    CLick On Thumbnail Screen
#    Check That Play Video Screen Display Successfully
#
#Check Behavior When Touch On Watching Mode Button
#   [Documentation]      NANACA-1006
#   sleep  5s
#   Click Switch Screen Button In Videos List Screen
#   Check That Thumbnail Mode Display Correctly
#   Click Switch Screen Button In Videos List Screen
#   Check That Thumbnail And Infor Show Correctly
#
#Check Behavior When Select Calendar Month In Video List Sreen
#    [Documentation]      NANACA-1007
#    Click On Calendar In Central Of Video List Screen
#    Check That Calendar Dialog Display
#    Click Prevous Month Text Box In Dialog In Video List Screen
#    Click Done Button In Dialog In Video List Screen
#    Check That Video Display In Previous Month
#    Click On Calendar In Central Of Video List Screen
#    Click Current Month Text Box In Dialog In Video List Screen
#    Click Done Button In Dialog In Video List Screen
#    Check That Video Display In Current Month
#
Check Behavior When Uploading Video To S3 After Recording Seizure Video (Case 1 Video)
    [Documentation]      NANACA-1010
    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
    AND Click In Video Save Setting In My Page Screen
    AND Turn On Save Video To Server In My Page Screen
    Click In Heart Icon In Bottle Screen
    Click On Videos List Tab In Management Screen
    Get List Video Of Current Date In Video List Screen
    Click In O'clock Icon In Bottle Screen
    Record Video In Top Page Screen
    sleep       30s
    Click Save Button
    Click Keep Record Button
    Click On Videos List Tab In Management Screen
    Check That Uploading Video In Video List Screen
    Check That Video Upload Completely

#Check Behavior When Uploading Many Video To S3 After Recording Seizure Video (Case Many Videos)
#    [Documentation]      NANACA-1011
#    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
#    AND Click In Video Save Setting In My Page Screen
#    AND Turn On Save Video To Server In My Page Screen
#    Click In O'clock Icon In Bottle Screen
#    Record Video In Top Page Screen
#    sleep       30s
#    Click Save Button
#    Click Keep Record Button
#    sleep       3s
#    Click In O'clock Icon In Bottle Screen
#    Record Video In Top Page Screen
#    sleep       30s
#    Click Save Button
#    Click Keep Record Button
#    Click On Videos List Tab In Management Screen
#    Check That Uploading Many Video In Video List Screen
#    Check That Many Video Upload Completely
#




Check Behavior When Uploading Video To S3 After Recording Seizure Video (Case Close App)
#    [Documentation]      NANACA-1012
#    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
#    AND Click In Video Save Setting In My Page Screen
#    AND Turn On Save Video To Server In My Page Screen
#    Click In O'clock Icon In Bottle Screen
#    Record Video In Top Page Screen
#    sleep       30s
#    Click Save Button
#    Click Keep Record Button
#    Click On Videos List Tab In Management Screen
#    Check That Uploading Video In Video List Screen
#    Quit Application
#    Open Nanacara App Again
#    Click In Heart Icon In Bottle Screen
#    Click On Videos List Tab In Management Screen
#    Check That Uploading Video In Video List Screen
#    Check That Video Upload Completely
  #tháng



#Verify That Confirm Share Dialog Display Correctly When Click Dr.Share Button In Dialog(Case Single Video)
#    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
#    AND Click In Video Save Setting In My Page Screen
#    AND Turn On Save Video To Server In My Page Screen
#    And Click In O'clock Icon In Bottle Screen
#    And Record Video In Top Page Screen
#    And sleep       30s
#    And Click Save Button
#    And Click Keep Record Button
#    Click On Videos List Tab In Management Screen
#    CLick Multi Select Mode Icon In Videos List Screen
#    Check That Multi Select Mode Dialog Display Correctly
#    Click In Dr Share Button In Dialog
#    Choose In First Video In Dr.Share Dialog
#    CLick V Button In Dr.Share Dialog
#    Check That Select Video Mode Dialog Disappear
#    Check That Confirm Share Dialog Display Correctly

#Verify That User Can Share Video In Dialog Dr.共有/ Dr Share (Case Single Video)
#    [Documentation]      NANACA-1014
##    CLick Share Button In Confirm Share Dialog
##    CLick Close Button In Shared Dialog
##    Check That Video List Screen Display Correctly
#    CLick Multi Select Mode Icon In Videos List Screen
#    Check That Multi Select Mode Dialog Display Correctly
#    Click In Dr Share Button In Dialog
#    Check That Dr.Share Dialog Display Correctly
#    Choose One Video In Dr.Share Dialog
#    CLick V Button In Dr.Share Dialog
#    CLick Share Button In Confirm Share Dialog
#    CLick Close Button In Shared Dialog
#    Check That Dr share Text Box Display In Thumbnail Video In Video List Screen

#Verify That User Can Share Video In Dialog Dr.共有/ Dr share (Case Many Videos)
##    [Setup]    Run keywords     Click In Setting Icon In Bottle Screen
##    AND Click In Video Save Setting In My Page Screen
##    AND Turn On Save Video To Server In My Page Screen
##    AND Click In O'clock Icon In Bottle Screen
##    AND Record Video In Top Page Screen
##    AND sleep       30s
##    AND Click Save Button
##    AND Click Keep Record Button
##    AND sleep       3s
##    AND Click In O'clock Icon In Bottle Screen
##    AND Record Video In Top Page Screen
##    AND sleep       30s
##    AND Click Save Button
##    AND Click Keep Record Button
##   Click On Videos List Tab In Management Screen
#    CLick Multi Select Mode Icon In Videos List Screen
#    Check That Multi Select Mode Dialog Display Correctly
#    Click In Dr Share Button In Dialog
#    Check That Dr.Share Dialog Display Correctly
#    Choose Two Video In Dr.Share Dialog
#    CLick V Button In Dr.Share Dialog
#    CLick Share Button In Confirm Share Dialog
#    CLick Close Button In Shared Dialog
#    Check That Dr share Text Box Display In Thumbnail Videos In Video List Screen
























