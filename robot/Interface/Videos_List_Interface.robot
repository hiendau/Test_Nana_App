
*** Variables ***
${VIDEOS_LIST_SCREEN_SEIZURE_RECORD_VIDEO_LIST}                 //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${VIDEOS_LIST_SCREEN_AVATAR_CHILD}                                //android.view.ViewGroup/android.widget.ImageView
${VIDEOS_LIST_SCREEN_MESSAGE_CONTENT_WHEN_DON'T_HAVE_VIDEO}               //android.view.ViewGroup/android.widget.TextView[@text='録画した動画はありません']
${VIDEOS_LIST_SCREEN_PREVIOUS_YEAR_BUTTON}                      //android.view.ViewGroup/android.widget.TextView[@text='']
${VIDEOS_LIST_SCREEN_NEXT_YEAR_BUTTON}                          //android.widget.TextView[@index='2' and @text='']
${VIDEOS_LIST_SCREEN_SELECT_MULTI_MODE_ICON}                     //android.widget.TextView[@text='発作記録']/following-sibling::android.view.ViewGroup/android.view.ViewGroup
${VIDEO_LIST_SCREEN_THUMBNAIL}                                    //android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='1']/android.view.ViewGroup/android.widget.ImageView

${VIDEOS_LIST_SCREEN_DR_SHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}                     //android.widget.TextView[@text='Dr.共有']
${VIDEOS_LIST_SCREEN_X_BUTTON_DIALOG}                          //android.widget.TextView[@text='をタップしてください']/preceding::android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='0']
${VIDEOS_LIST_SCREEN_V_BUTTON_DIALOG}                          //android.widget.TextView[@text='をタップしてください']/preceding::android.view.ViewGroup[@index='1']/android.view.ViewGroup[@index='0']
${VIDEOS_LIST_SCREEN_DR_SHARE_TITLE_DIALOG}                      //android.widget.TextView[@text='Dr.共有']
${VIDEOS_LIST_SCREEN_DR_SHARE_TEXT1_DIALOG}                        //android.widget.TextView[@text='Dr.に共有したい動画を選択し、']
${VIDEOS_LIST_SCREEN_V_TEXTBOX_DIALOG}                               //android.widget.TextView[@text='をタップしてください']/preceding-sibling::android.view.ViewGroup[@index='3']
${VIDEOS_LIST_SCREEN_DR_TEXT2_DIALOG}                               //android.widget.TextView[@text='をタップしてください']
${VIDEOS_LIST_SCREEN_DR_FIRST_VIDEO_DIALOG}                        //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='1']
${VIDEOS_LIST_SCREEN_DR_SECOND_VIDEO_DIALOG}                        //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='2']
${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_DR_SHARE_DIALOG}                         //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[@index='1']//android.widget.TextView[@text='記録時間']/following-sibling::android.widget.TextView[@index='3']
${VIDEOS_LIST_SCREEN_DR_TIME_SECOND_VIDEO_DR_SHARE_DIALOG}                  //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[@index='2']//android.widget.TextView[@text='記録時間']/following-sibling::android.widget.TextView[@index='3']
${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_1}                          //android.widget.TextView[@text='xx']/parent::android.view.ViewGroup/preceding::android.view.ViewGroup/android.widget.TextView[@text='Dr.共有']
${VIDEOS_LIST_SCREEN_DR_TIME_VIDEO_2}                          //android.widget.TextView[@text='zz']/parent::android.view.ViewGroup/preceding::android.view.ViewGroup/android.widget.TextView[@text='Dr.共有']
${VIDEO_LIST_SCREEN_CONFIRM_QUESTION_IN_COMFIRM_SHARE_DIALOG}                  //android.widget.TextView[@text='選択された動画1件を Dr.共有しますか？']
${VIDEO_LIST_SCREEN_SHARE_BUTTON_IN_COMFIRM_SHARE_DIALOG}                       //android.widget.Button[@text='共有']
${VIDEO_LIST_SCREEN_CANCEL_BUTTON_IN_COMFIRM_SHARE_DIALOG}                      //android.widget.Button[@text='キャンセル']

${VIDEO_LIST_SCREEN_CLOSE_BUTTON_IN_SHARED_DIALOG}                              //android.widget.Button[@text='閉じる']

${VIDEOS_LIST_SCREEN_DR_UNSHARE_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}                                   //android.widget.TextView[@text='Dr.共有解除']
${VIDEOS_LIST_SCREEN_DR_UNSHARE_TITLE_DIALOG}                                                        //android.widget.TextView[@text='Dr.共有解除']
${VIDEOS_LIST_SCREEN_DR_UNSHARE_TEXT1_DIALOG}                                                        //android.widget.TextView[@text='共有解除したい動画を選択し、']

${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}                         //android.widget.TextView[@text='サーバに再アップロード']
${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_TITLE_DIALOG}                                               //android.widget.TextView[@text='サーバに再アップロード']
${VIDEOS_LIST_SCREEN_RE_UPLOAD_TO_SERVER_TEXT1_DIALOG}                                                //android.widget.TextView[@text='サーバーに同期したい動画を選択し、']

${VIDEOS_LIST_SCREEN_SD_CARD_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}                           //android.widget.TextView[@text='SDカードに移動']
${VIDEOS_LIST_SCREEN_CANCEL_BUTTON_IN_SELECT_VIDEO_MODE_DIALOG}                            //android.widget.TextView[@text='キャンセル']


${VIDEOS_LIST_SCREEN_DATE_DIALOG}                                 //android.view.ViewGroup[@index='0']/android.widget.TextView[@index='0']
${VIDEOS_LIST_SCREEN__LIST_VIDEO}                           //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[@index='0']/android.view.ViewGroup
${VIDEOS_LIST_SCREEN_STATUS_OF_VIDEO}                           //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@index='1']
${VIDEOS_LIST_SCREEN_RECORD_TIME}                               //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@index='3']
${VIDEOS_LIST_SCREEN_SEIZURE_TYPE}                               //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@index='5']
${VIDEOS_LIST_SCREEN_MEMO}                                      //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@index='6']
${VIDEOS_LIST_SCREEN_SWITCH_SCREEN_BUTTON}                      //android.view.ViewGroup[@index='3']/android.view.ViewGroup
${VIDEOS_LIST_SCREEN_ONLY_LIST_THUMBNAIL}                       //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
${VIDEOS_LIST_SCREEN_CALENDAR_TEXTBOX}                           //android.widget.TextView[@text='']/following-sibling::android.view.ViewGroup[@index='1']/android.widget.TextView[@index='1']
${VIDEOS_LIST_SCREEN_DONE_BUTTON_IN_DIALOG}                      //android.widget.TextView[@text='完了']
${VIDEOS_LIST_SCREEN_PREVIOUS_MONTH_IN_DIALOG}                  //android.widget.ScrollView[@index='1']/android.view.ViewGroup/android.view.ViewGroup[@index='0']
${VIDEOS_LIST_SCREEN_CURRENT_MONTH_IN_DIALOG}                  //android.widget.ScrollView[@index='1']/android.view.ViewGroup/android.view.ViewGroup[@index='1']

${VIDEOS_LIST_SCREEN_PREPARE_UPLOADING_TEXTBOX}                 //android.widget.TextView[@text='未アップロード']
${VIDEOS_LIST_SCREEN_UPLOADING_TEXTBOX}                         //android.widget.TextView[@text='アップロード中']
${VIDEOS_LIST_SCREEN_UPLOADEDD_TEXTBOX}                          //android.widget.TextView[@text='アップロード済み']

${VIDEO_LIST_SCREEN_UPLOAD_STATUS_TEXTBOX}                     //android.widget.TextView[@text='アップロード中止']
${VIDEO_LIST_SCREEN_1_VIDEO_UPLOAD_TEXTBOX}                     //android.widget.TextView[@text='動画アップロード中：1件']
${VIDEO_LIST_SCREEN_2_VIDEO_UPLOAD_TEXTBOX}                     //android.widget.TextView[@text='動画アップロード中：2件']
${VIDEO_LIST_SCREEN_PROGESS_BAR_ICON_IN_THUMBNAIL}              //android.widget.TextView[@text='記録時間']/parent::android.view.ViewGroup/preceding-sibling::android.view.ViewGroup[@index='1']/android.view.ViewGroup[@index='0']

${VIDEO_LIST_SCREEN_NEWEST_VIDEO_RECORD}                        //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[@index='0']/android.view.ViewGroup[@index='yy']