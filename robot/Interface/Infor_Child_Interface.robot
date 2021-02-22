
*** Variables ***
${INFOR_CHILD_SCREEN_NAME_CHILD_TEXTBOX}         //android.widget.EditText[@text='お子様の名前']/following-sibling::android.widget.EditText
${INFOR_CHILD_SCREEN_NAME_TEXTBOX}               //android.widget.EditText[@text='呼び名']/following-sibling::android.view.ViewGroup/android.widget.EditText
${INFOR_CHILD_SCREEN_BIRTHDAY_TEXTBOX}           //android.widget.EditText[@text='誕生日']/following-sibling::android.view.ViewGroup//android.widget.TextView[@index='0']
${INFOR_CHILD_SCREEN_SAVE_BUTTON}                //android.widget.TextView[@text='完了']
${CALENDAR_POPUP_DAY_TEXT}                      //android.view.View[@checked='true']
${CALENDAR_POPUP_INPUT_DAY_TEXT}                 //android.view.View[@text='DATE']
${CALENDAR_POPUP_OK_BUTTON}                     //android.widget.Button[@text='OK']
${CALENDAR_POPUP_CANCEL_BUTTON}                 //android.widget.Button[@text='CANCEL']
${INFOR_CHILD_SCREEN_TITLE}                     //android.widget.TextView[@text='お子様情報編集']
${CALENDAR_POPUP_PREVIOUS_MONTH_BUTTON}         //android.widget.ImageButton[@content-desc='Previous month']
${CALENDAR_POPUP_NEXT_MONTH_BUTTON}              //android.widget.ImageButton[@content-desc='Next month']
${CALENDAR_POPUP_YEAR_TEXT}                      //android.widget.TextView[@resource-id='android:id/date_picker_header_year']
${CALENDAR_POPUP_BIRTHDAY_TEXT}                 //android.widget.TextView[@resource-id='android:id/date_picker_header_date']
${CALENDAR_POPUP_YEAR_TEXT_SCROLL}              //android.widget.TextView[@text='YEAR']
${FIRST_YEAR_IN_SCROLL}                         //android.widget.TextView[@index='1' and @resource-id='android:id/text1']
${LAST_YEAR_IN_SCROLL}                           //android.widget.TextView[@index='5' and @resource-id='android:id/text1']