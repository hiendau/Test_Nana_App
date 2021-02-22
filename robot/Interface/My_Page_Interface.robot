*** Settings ***
Library      AppiumLibrary
Resource    ../Common/Common.robot

*** Variables ***
${MY_PAGE_SCREEN_NAME_CHILD_FIELD }           //android.widget.TextView[@text='お子様一覧']/following-sibling::android.view.ViewGroup[@index='9']//android.widget.TextView[@index='0']
${MY_PAGE_SCREEN_BIRTH_CHILD_FIELD }           //android.widget.TextView[@text='お子様一覧']/following-sibling::android.view.ViewGroup[@index='9']//android.widget.TextView[@index='1']
${MY_PAGE_SCREEN_TITLE}                       //android.widget.TextView[@text='アカウント情報']
${MY_PAGE_SCREEN_NAME_USER_FIELD}              //android.widget.TextView[@text='ログイン情報']/preceding::android.view.ViewGroup[@index='1']//android.widget.TextView[@index='0']
${MY_PAGE_SCREEN_LIST_CHILD_FIELD}             //android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[@index='0' and @text='NAME']
${MY_PAGE_SCREEN_VIDEO_SAVE_SETTING}            //android.widget.TextView[@text='動画保存先設定']
${MY_PAGE_SCREEN_SAVE_VIDEO_IN_SERVER}                   //android.widget.Switch[@text='ON']

