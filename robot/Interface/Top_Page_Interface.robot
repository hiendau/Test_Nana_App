*** Settings ***
Library      AppiumLibrary

*** Variable ***
${TOP_PAGE_SCREEN_POPUP_ERROR_MESSAGE_DIALOG_BOX}                                //android.widget.TextView[@text='電話番号・メールアドレスまたはパスワードが正しくありません。']
${TOP_PAGE_SCREEN_OK_BUTTON}                                                     //android.widget.TextView[@text='OK']
${TOP_PAGE_SCREEN_ALLOW_BUTTON}                                                  //android.widget.Button[@text='ALLOW']
${TOP_PAGE_SCREEN_DENY_BUTTON}                                                   //android.widget.Button[@text='DENY']
${TOP_PAGE_SCREEN_ALLOW_TAKE_PICURE_AND_RECORD_VIDEO_TEXT}                       //android.widget.TextView[@text='Allow nanacaraSTG to take pictures and record video?']
${TOP_PAGE_SCREEN_ALLOW_RECORD_AUDIO_TEXT}                                       //android.widget.TextView[@text='Allow nanacaraSTG to record audio?']
${TOP_PAGE_SCREEN_TITLE}                                                         //android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text='発作記録']
${TOP_PAGE_SCREEN_TITLE_RECORD_VIDEO}                                                  //android.widget.TextView[@text='発作記録']
${TOP_PAGE_SCREEN_RECORD_VIDEO}                                     //android.widget.TextView[@text='動画付き']/parent::android.view.ViewGroup
${TOP_PAGE_SCREEN_RECORD_VIDEO_SAVE_BUTTON}                                                  //android.widget.TextView[@text='保存']
${TOP_PAGE_SCREEN_KEEP_RECORD_BUTTON}                                              //android.widget.TextView[@text='記録を保存する']