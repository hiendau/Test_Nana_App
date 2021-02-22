*** Settings ***
Library         AppiumLibrary
Resource        ../Common/Common.robot
Resource        ../Keyword/Get_User_Family_keyword.robot
Library         BuiltIn

*** Keywords ***
Get API List Child Of Family
     Create Session              GetAPI                     ${URL}
     ${response}=                GET On Session             GetAPI      /families/${ID_FAMILY}/children         headers=${HEADER}
     ${GET_API_NAME_CHILD}=      Get Value From Json        ${response.json()}      $..name
     Set Global Variable         ${GET_API_NAME_CHILD}
     ${GET_API_NAME}=            Get Value From Json        ${response.json()}      $..kid_title
     Set Global Variable         ${GET_API_NAME}



Check List Child Show Correctly
     ${count_name_child}=        Get Length                 ${GET_API_NAME}
     FOR    ${i}                 IN RANGE    0              ${count_name_child}
     ${name_child}=              Replace String             ${MY_PAGE_SCREEN_LIST_CHILD_FIELD}          NAME          ${GET_API_NAME_CHILD[${i}]}${GET_API_NAME[${i}]}
     Element Should Be Visible                              ${name_child}
     ${status}=       run keyword and return status          Element Should Be Visible                              ${name_child}
     log             ${status}
     run keyword if          '${status}'=='False'            Swipe     362      485        483     261
     END
#Check List Child Show Correctly
#     FOR    ${i}                 IN                         @{GET_API_NAME_CHILD}
#     ${name_child}=              Replace String             ${MY_PAGE_SCREEN_LIST_CHILD_FIELD}          NAME          ${i}
#     ${status}=       run keyword and return status          Element Should Be Visible                              ${name_child}
#     log             ${status}
#     run keyword if          '${status}'=='False'            Swipe     362      485        483     261
#     END
