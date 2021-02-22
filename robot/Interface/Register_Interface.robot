*** Settings ***
Library      AppiumLibrary
Resource    ../Common/Common.robot

*** Variable ***
${REGISTER_SCREEN_TITLE}                                                                   //android.widget.TextView[@text='新規登録']
${REGISTER_SCREEN_EMAIL_TEXTBOX}                                                           //android.widget.TextView[@text='パスワード']/preceding::android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${REGISTER_SCREEN_PASSWORD_TEXTBOX}                                                        //android.widget.TextView[@text='パスワード']/following-sibling::android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${REGISTER_SCREEN_CONFIRM_PASSWORD_TEXTBOX}                                                //android.widget.TextView[@text='パスワード（確認用）']/following-sibling::android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${REGISTER_SCREEN_NEXT_BUTTON}                                                             //android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@text='次へ']
${REGISTER_SCREEN_ERROR_MESSAGE_EMAIL_FIELD_WHEN_EMPTY_EMAIL}                              //android.widget.TextView[@text='メールアドレスが未入力です。']
${REGISTER_SCREEN_ERROR_MESSAGE_PASSWORD_FIELD_WHEN_EMPTY_PASSWORD}                        //android.widget.TextView[@text='パスワードが未入力です。']
${REGISTER_SCREEN_ERROR_MESSAGE_CONFIRM_PASSWORD_FIELD_WHEN_EMPTY_PASSWORD}                //android.widget.TextView[@text='パスワードが一致していません']
${REGISTER_SCREEN_ERROR_MESSAGE_CONFIRM_PASSWORD_FIELD_WHEN_EMPTY_CONFIRM_PASSWORD}        //android.widget.TextView[@text='パスワード確認用が未入力です。']
${REGISTER_SCREEN__BACK_BUTTON}                                                             //android.widget.TextView[@text='']