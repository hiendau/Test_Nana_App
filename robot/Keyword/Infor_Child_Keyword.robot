*** Settings ***
Library         AppiumLibrary
Library         String
Library         BuiltIn
Resource        ../Common/Common.robot
Resource        My_Page_Interface.robot
Resource        ../Interface/Detail_Name_Child_Interface.robot
Resource        My_Page_Keyword.robot

*** Keywords ***
CLear Name Child In Information Children Screen
    Clear Text      ${INFOR_CHILD_SCREEN_NAME_CHILD_TEXTBOX}

Input Name Child In Information Children Screen
    [Arguments]     ${name_child_text}
    Input Text      ${INFOR_CHILD_SCREEN_NAME_CHILD_TEXTBOX}          ${name_child_text}

Choose Name In Information Children Screen
    Click Element                           ${INFOR_CHILD_SCREEN_NAME_TEXTBOX}
    Wait Until Page Contains Element        ${DETAIL_NAME_SCREEN_TITLE}
    [Arguments]         ${name_text}
    Click Element       ${DETAIL_NAME_SCREEN_NAME_CHECKBOX}

Click Save Button In Information Children Screen
    FOR    ${i}     IN RANGE    0            3
    ${status}=      Run Keyword And Return Status          Wait Until Element Is Visible    ${INFOR_CHILD_SCREEN_SAVE_BUTTON}       3s
    Run Keyword If          '${status}'=='True'            Exit For Loop
    ...    ELSE IF          '${status}'=='False'           swipe    462      1585        483     261
    END
    Click Element            ${INFOR_CHILD_SCREEN_SAVE_BUTTON}
    Sleep	7s

Check Name Children Show Correctly
    [Arguments]                             ${name_child}      ${name}
    ${full_name} =	Catenate	SEPARATOR=	${name_child}      ${name}
    Wait Until Page Contains Element        ${MY_PAGE_SCREEN_TITLE}        50s
    ${get_text_name_child}=                 Get Text            ${MY_PAGE_SCREEN_NAME_CHILD_FIELD }
    Should Be Equal                         ${get_text_name_child}                   ${full_name}

Click The Birthday Children Field In Information Children Screen
    FOR    ${i}    IN RANGE    0    10
    ${status}=           Run Keyword And Return Status       wait until element is visible    ${INFOR_CHILD_SCREEN_BIRTHDAY_TEXTBOX}
    Run Keyword If      '${status}'=='True'                  Exit For Loop
    ...    ELSE IF      '${status}'=='False'                 swipe   462      1585        483     261
    END
    Click Element        ${INFOR_CHILD_SCREEN_BIRTHDAY_TEXTBOX}

Select Birthday In Popup
    [Arguments]                  ${birthday_text}
    Wait Until Page Contains Element                 ${CALENDAR_POPUP_YEAR_TEXT}
    ${GET_CURRENT_YEAR}=         Get Text            ${CALENDAR_POPUP_YEAR_TEXT}
    ${GET_CURRENT_DAY}=           Get Text            ${CALENDAR_POPUP_DAY_TEXT}
    set global variable         ${GET_CURRENT_YEAR}
    set global variable         ${GET_CURRENT_DAY}
    ${GET_INPUT_BIRTHDAY}        split string        ${birthday_text}     ${SPACE}
    Set Global Variable          ${GET_INPUT_BIRTHDAY}
    Run Keyword If              '${GET_CURRENT_YEAR}'=='${GET_INPUT_BIRTHDAY[0]}'            Select Month In Popup
    Run Keyword If              '${GET_CURRENT_YEAR}'!='${GET_INPUT_BIRTHDAY[0]}'            Select Year In Popup

Select Year In Popup
    Click Element                ${CALENDAR_POPUP_YEAR_TEXT}
    FOR    ${i}    IN RANGE     0        10
    ${replace_year}=            replace string      ${CALENDAR_POPUP_YEAR_TEXT_SCROLL}          YEAR          ${GET_INPUT_BIRTHDAY[0]}
    ${status}=                  Run Keyword And Return Status        Element Should Be Visible                ${replace_year}
    Run Keyword If              ${status}                             Click Element                            ${replace_year}
    Exit For Loop If            ${status}
    Run Keyword If              ${GET_CURRENT_YEAR}>${GET_INPUT_BIRTHDAY[0]}                   Scroll Down At Year In Pop Up
    Run Keyword If              ${GET_CURRENT_YEAR}<${GET_INPUT_BIRTHDAY[0]}                   Scroll Up At Year In Popup
    END
    Select Month In Popup

Select Month In Popup
     ${get_birthday_text}=                  Get Text              ${CALENDAR_POPUP_BIRTHDAY_TEXT}
     ${GET_CURRENT_BIRTHDAY} =	            Split String	      ${get_birthday_text}	        ${SPACE}
     Set Global Variable                    ${GET_CURRENT_BIRTHDAY}
     &{MONTH}=                   Create Dictionary     Jan=1     Feb=2      Mar=3     Apr=4      May=5       Jun=6     Jul=7       Aug=8       Sep=9      Oct=10   Nov=11  Dec=12
     ${INPUT_MONTH}=             Convert To Integer    ${MONTH["${GET_INPUT_BIRTHDAY[1]}"]}
     Set Global Variable          ${INPUT_MONTH}
     ${current_month}=           Convert To Integer    ${MONTH["${GET_CURRENT_BIRTHDAY[1]}"]}
     ${value}=                   Evaluate              ${INPUT_MONTH} - ${current_month}
     ${value1}=                  Evaluate              abs(${value})
     Run Keyword If              ${value} > 0          Click Next Month Button          ${value}
     Run Keyword If              ${value} < 0          Click Previous Month Button      ${value1}
     Run Keyword If              ${value} == 0         Select Day In Calendar Pop Up

Change Day In Calendar Popup
    ${REPLACE_DATE}=            replace string      ${CALENDAR_POPUP_INPUT_DAY_TEXT}       DATE     ${get_input_birthday[2]}
    set global variable         ${REPLACE_DATE}
    click element               ${REPLACE_DATE}
    Click Ok Button

Select Day In Calendar Pop Up
    ${status}=      run keyword and return status                   element should be visible       ${CALENDAR_POPUP_DAY_TEXT}
    run keyword if      '${status}'=='True' and '${GET_CURRENT_DAY}'=='${GET_INPUT_BIRTHDAY[2]}'             Click Element                     ${CALENDAR_POPUP_OK_BUTTON}
    ...     ELSE IF         '${status}'=='False'      Change Day In Calendar Popup

Check Birthday Children Show Correctly In Information Children Screen
     ${get_birthday_text}=              Get text                ${MY_PAGE_SCREEN_BIRTH_CHILD_FIELD }
     ${birthday_after_change}=          split string            ${get_birthday_text}      ${SPACE}
     ${input_birthday}=                 Catenate	SEPARATOR=	${GET_INPUT_BIRTHDAY[0]}年${input_month}月${GET_INPUT_BIRTHDAY[2]}日
     Should Be Equal                    ${birthday_after_change}[2]                       ${input_birthday}

Click Next Month Button
    [Arguments]      ${value}
    FOR    ${i}    IN RANGE    0     ${value}
    Click Element                    ${CALENDAR_POPUP_NEXT_MONTH_BUTTON}
    END
    Select Day In Calendar Pop Up

Click Previous Month Button
    [Arguments]     ${value1}
    FOR    ${i}     IN RANGE    0    ${value1}
    Click Element                    ${CALENDAR_POPUP_PREVIOUS_MONTH_BUTTON}
    END
    Select Day In Calendar Pop Up

Scroll Down At Year In Popup
    Scroll       ${FIRST_YEAR_IN_SCROLL}            ${LAST_YEAR_IN_SCROLL}

Scroll Up At Year In Popup
    Scroll       ${LAST_YEAR_IN_SCROLL}             ${FIRST_YEAR_IN_SCROLL}

#Select Birthday In Popup
#    [Arguments]                  ${birthday_text}
#    Wait Until Page Contains Element                 ${CALENDAR_POPUP_YEAR_TEXT}
#    ${get_current_year}=         Get Text            ${CALENDAR_POPUP_YEAR_TEXT}
#    ${get_input_birthday}        split string        ${birthday_text}     ${SPACE}
#    set global variable          ${get_input_birthday}
#    Run Keyword If              '${get_current_year}'=='${get_input_birthday[0]}'            Select Month In Popup  ${birthday_text}
#    Run Keyword If              '${get_current_year}'!='${get_input_birthday[0]}'            Select Year In Popup   ${birthday_text}
#
#Select Month In Popup
#     [Arguments]                 ${birthday_text}
#     ${get_birthday_text}=       Get Text              ${CALENDAR_POPUP_BIRTHDAY_TEXT}
#     ${get_month} =	             Split String	       ${get_birthday_text}	        ${SPACE}
#     &{MONTH}=                   Create Dictionary     Jan=1     Feb=2      Mar=3     Apr=4      May=5       Jun=6     Jul=7       Aug=8       Sep=9      Oct=10   Nov=11  Dec=12
#     ${get_input_month}          split string          ${birthday_text}             ${SPACE}
#     ${input_month}=             Convert To Integer    ${MONTH["${get_input_month[1]}"]}
#     ${current_month}=           Convert To Integer    ${MONTH["${get_month[1]}"]}
#     ${value}=                   Evaluate              ${input_month} - ${current_month}
#     ${value1}=                  Evaluate              abs(${value})
#     Run Keyword If              ${value} > 0          Click Next Month Button          ${value}            ${birthday_text}
#     Run Keyword If              ${value} < 0          Click Previous Month Button      ${value1}           ${birthday_text}
#     Run Keyword If              ${value} == 0         Select Day In Calendar Pop Up    ${birthday_text}
#
#Select Year In Popup
#    [Arguments]                  ${birthday_text}
#    Click Element                ${CALENDAR_POPUP_YEAR_TEXT}
#    FOR    ${i}    IN RANGE    0  10
#    ${get_text_year}            Get Text            ${CALENDAR_POPUP_YEAR_TEXT}
#    ${get_input_year}           split string        ${birthday_text}     ${SPACE}
#    ${replace_year}=            replace string      ${CALENDAR_POPUP_YEAR_TEXT_SCROLL}          YEAR          ${get_input_year[0]}
#    ${status}=                  Run Keyword And Return Status        element should be visible                ${replace_year}
#    Run Keyword If              ${status}                             Click Element                            ${replace_year}
#    Exit For Loop If            ${status}
#    Run Keyword If              ${get_text_year}>${get_input_year[0]}                   Scroll Down Year In Pop Up
#    Run Keyword If              ${get_text_year}<${get_input_year[0]}                   Scroll Up Year In Popup
#    END
#    Select Month In Popup       ${birthday_text}
#
#Select Day In Calendar Pop Up
#    [Arguments]                 ${birthday_text}
#    ${get_date_text}=           Get Text            ${CALENDAR_POPUP_DAY_TEXT}
#    ${get_input_date}           split string        ${birthday_text}             ${SPACE}
#    Run Keyword If     '${get_date_text}'!='${get_input_date[2]}'       Change Day In Calendar Popup      ${birthday_text}
#    ...     ELSE IF    '${get_date_text}'=='${get_input_date[2]}'        Click Element                     ${CALENDAR_POPUP_OK_BUTTON}
#
#Change Day In Calendar Popup
#    [Arguments]                 ${birthday_text}
#    ${get_input_birthday}       split string        ${birthday_text}     ${SPACE}
#    ${replace_date}=            replace string      ${CALENDAR_POPUP_INPUT_DAY_TEXT}       DATE     ${get_input_birthday[2]}
#    Click Element               ${replace_date}
#    Click Element               ${CALENDAR_POPUP_OK_BUTTON}
#    Click Save Button In Information Children Screen
#    Wait Until Page Contains Element                ${MY_PAGE_SCREEN_TITLE}  20s
#
#Check Birthday Children Show Correctly In Information Children Screen
#     [Arguments]                        ${birthday_text}
#     &{MONTH}=                          Create Dictionary     Jan=1     Feb=2      Mar=3     Apr=4      May=5       Jun=6     Jul=7       Aug=8       Sep=9      Oct=10   Nov=11  Dec=12
#     ${get_input_birthday}              split string          ${birthday_text}          ${SPACE}
#     ${input_month}=                    Convert To Integer    ${MONTH["${get_input_birthday[1]}"]}
#     ${get_birthday_text}=              Get text              ${MY_PAGE_SCREEN_BIRTH_CHILD_FIELD }
#     ${birthday_after_change}=          split string          ${get_birthday_text}      ${SPACE}
#     ${input_birthday}=                 Catenate	SEPARATOR=	${get_input_birthday[0]}年${input_month}月${get_input_birthday[2]}日
#     Should Be Equal                    ${birthday_after_change}[2]                     ${input_birthday}
#
#Click Next Month Button
#    [Arguments]      ${value}         ${birthday_text}
#    FOR    ${i}    IN RANGE    0     ${value}
#    Click Element                    ${CALENDAR_POPUP_NEXT_MONTH_BUTTON}
#    END
#    Select Day In Calendar Pop Up       ${birthday_text}
#
#Click Previous Month Button
#    [Arguments]     ${value1}       ${birthday_text}
#    FOR    ${i}     IN RANGE    0    ${value1}
#    Click Element                    ${CALENDAR_POPUP_PREVIOUS_MONTH_BUTTON}
#    END
#    Select Day In Calendar Pop Up       ${birthday_text}

#     hieu = nht - nnv
#     -
#     +
#     tam = sv hieu
#     abs tam =+
#     for in rane
#     dk hieu >0 trai
#     <0 phai
#     clivk ngay
