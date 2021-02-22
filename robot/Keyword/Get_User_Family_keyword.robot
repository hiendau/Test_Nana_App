*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
Resource        ../Common/Common.robot
Resource        ../Interface/Infor_User_Interface.robot

*** Variables ***
${URL}          https://api-kids.staging.kod-hc.info
&{HEADER}                 cache-control=no-cache      x-from=https://web-com-kanri.dev.kod-hc.info     content-type=application/json      authorization=Bearer eyJraWQiOiJVd3pzZEh4NDZ2Z1FkaEFjbWlCOGJ4MkhCaEpiUkxMN2hodWZyRzM5bkFZPSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiIyMmFhM2YyNC0yMzk4LTQ4NjMtOTU2NC02NWZkZDgwZGY4MmUiLCJhdWQiOiJwNzFkbzA1c3Z0YTN0Zm1wNzhlZWVzY2o2IiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImV2ZW50X2lkIjoiYzQ0MDRiNDAtODVmOS00MmViLWI5NmMtYmRlYmFjZTY0NmVmIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2MTE5MTQ1MzQsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5hcC1ub3J0aGVhc3QtMS5hbWF6b25hd3MuY29tXC9hcC1ub3J0aGVhc3QtMV9ZRHk4aGxqZFEiLCJjb2duaXRvOnVzZXJuYW1lIjoiMjJhYTNmMjQtMjM5OC00ODYzLTk1NjQtNjVmZGQ4MGRmODJlIiwiZXhwIjoxNjExOTE4MTM0LCJpYXQiOjE2MTE5MTQ1MzQsImVtYWlsIjoia2llbi5uZ3V5ZW4rOUBjb2RlY29tcGxldGUuanAifQ.CUnWW4ML0HXKgHV1reKXZ5RNqhE0DHktpTACDRWWKTh3neOZ_A_BtP_1Bv9TfoJIGuUMyeqtvtU2jWIVfKXGhvkTQXicpZ5LVJFKLIEV-l19NmaVpFLmeJzdljyXu-6EHkGF73Urnd0hE5FpTc8A3Vt8u5APj5QMGM_0-wS2-MtOUxD_toLHszdIyVh517eY6nBbRlzZ-8nthqxa6QLdWGlTGVhSDKcwmsbYUlpP0EopeqstdGg2vLKjIhqjuLaz5stm-v9feAuEOrzksFjS-osSS_yhPhaTrOtUFxvmw5Tjg6MuS-aGPNrRh8FqpQRpuO3OGLLprUXtaOFLCc-Bwg

*** Keywords ***
Get API User Family
    Create Session              GetAPI            ${URL}
    ${response} =               GET On Session    GetAPI      /v2/users/getUserFamily         headers=${HEADER}
    ${OBJECT}=                  evaluate  json.loads('''${response.content}''')    json
    ${NAME_USER}                 set variable        ${OBJECT['data']['family']['name']}
    Set Global Variable         ${NAME_USER}
    ${ID_FAMILY}                 set variable        ${OBJECT['data']['family']['id']}
    Set Global Variable         ${ID_FAMILY}

Get User Family In App
     Click Name User Textbox In Information Account Screen
     Wait Until Page Contains Element        ${INFOR_USER_SCREEN_TITLE}         10s
     ${GET_CURRENT_TEXT}=                    get text        ${INFOR_USER_SCREEN_NAME_USER_TEXTBOX}
     Set Global Variable                     ${GET_CURRENT_TEXT}

Check That Get API User Family Show Correctly
    Should Be Equal      ${NAME_USER}           ${GET_CURRENT_TEXT}

