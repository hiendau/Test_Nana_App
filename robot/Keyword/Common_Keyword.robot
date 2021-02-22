*** Keywords ***
Turn On Network
    Set Network Connection Status    6

Turn Off Network
    Set Network Connection Status    0

Open Nanacara App Again
    Start Activity          jp.knockonthedoor.healthcare.kids.stg      jp.knockonthedoor.healthcare.kids.MainActivity

Click Back Button
    click element           ${PLAY_VIDEO_SCREEN_BACK_BUTTON}


