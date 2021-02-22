*** Settings ***
Library    AppiumLibrary
Resource    ../Common/Common.robot
Resource    Tutorial_Interface.robot
Resource    ../Interface/Register_Interface.robot

*** Variable ***
${LOGIN_SCREEN_EMAIL_TEXTBOX}                                                   //android.widget.TextView[@text='パスワード']/preceding::android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${LOGIN_SCREEN_PASSWORD_TEXTBOX}                                                //android.widget.TextView[@text='パスワード']/following-sibling::android.view.ViewGroup/android.view.ViewGroup/android.widget.EditText
${LOGIN_SCREEN_LOGIN_BUTTON}                                                    //android.widget.ScrollView//android.widget.TextView[@text='ログイン']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LEAVE_EMAIL_FIELD_BLANK}                      //android.widget.TextView[@text='メールアドレス / 電話番号']/following-sibling::android.widget.TextView[@text='登録メールアドレスまたは電話番号が未入力です。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LEAVE_PASSWORD_FIELD_BLANK}                   //android.widget.TextView[@text='パスワード']/following-sibling::android.widget.TextView[@text='パスワードが未入力です。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_INCORRECT_FORMAT_EMAIL_FIELD}                 //android.widget.TextView[@text='メールアドレス / 電話番号']/following-sibling::android.widget.TextView[@text='電話番号またはメールアドレスの形式が違います。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_ENTER_LESS_8_CHARACTER_PASSWORD_FIELD}        //android.widget.TextView[@text='パスワード']/following-sibling::android.widget.TextView[@text='パスワードは8文字以上大文字あり、半角英数字で入力してください。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_ENTER_ALPHABET_AND_OVER_8_CHARACTER_PASSWORD_FIELD}           //android.widget.TextView[@text='パスワード']/following-sibling::android.widget.TextView[@text='パスワードは8文字以上大文字あり、半角英数字で入力してください。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_ENTER_NUMBER_AND_OVER_8_CHARACTER_PASSWORD_FIELD}             //android.widget.TextView[@text='パスワード']/following-sibling::android.widget.TextView[@text='パスワードは8文字以上大文字あり、半角英数字で入力してください。']
${LOGIN_SCREEN_ERROR_MESSAGE_WHEN_LOGIN_WITHOUT_NETWORK}                        //android.widget.TextView[@text='ネットワークに接続されていません。']
${LOGIN_SCREEN_TITLE}                                                                            //android.widget.TextView[@text='ログイン']
