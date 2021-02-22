*** Settings ***
Library      AppiumLibrary
Resource    ../Common/Common.robot
*** Variables ***
${TERMS_OF_SERVICE_SCREEN_TITLE}                                                                  //android.widget.TextView[@text='利用規約']
${TERMS_OF_SERVICE_SCREEN_AGREE_BUTTON}                                                           //android.widget.TextView[@text='同意する']
${TERMS_OF_SERVICE_SCREEN_CANCEL_ICON}                                                            //android.widget.Button[@index='1']
${TERMS_OF_SERVICE_SCREEN_ERROR_MESSAGE_WHEN_CONECT_WITHOUT_NETWORK}                              //android.widget.TextView[@text='ネットワークに接続されていません。']
${TERMS_OF_SERVICE_SCREEN_OK_BUTTON}                                                               //android.widget.Button[@text='OK']
${TERMS_OF_SERVICE_SCREEN_BACK_BUTTON}                                                             //android.widget.TextView[@text='']
${TERMS_OF_SERVICE_SCREEN_LINE1_UNDER_TITLE}                                                    //android.view.ViewGroup[@index='1']
${TERMS_OF_SERVICE_SCREEN_LINE2_UNDER_TITLE}                                                    //android.view.ViewGroup[@index='2']
${TERMS_OF_SERVICE_SCREEN_LINE3_UNDER_TITLE}                                                    //android.view.ViewGroup[@index='3']
${TERMS_OF_SERVICE_SCREEN_LINE4_UNDER_TITLE}                                                    //android.view.ViewGroup[@index='4']
${TERMS_OF_SERVICE_SCREEN_LINE5_UNDER_TITLE}                                                    //android.view.ViewGroup[@index='5']
${TERM_OF_SERVICE_SCREEN_NAME_TERM_OF SERVICE}                                                  //android.view.View[@text='nanacara(ナナカラ)利用規約']
${TERMS_OF_SERVICE_SCREEN_ARTICLE_1}                                                            //android.view.View[@text='第１条　規約への同意、規約の変更等']
${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_1}                                                    //android.view.View[@text='1 ) 「nanacara（ナナカラ）」（以下「本アプリ」といいます。）は、ノックオンザドア株式会社（以下「当社」といいます。）が提供するてんかん症状を有する個人の症状・生活・療育履歴等を記録・共有・活用（以下「記録等」といいます。）するサービスのプラットフォームとして機能するアプリケーションソフトウエアであり、本アプリの利用者は、本規約の内容に同意の上、本規約の定めに従って本アプリを利用することができます。']
${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_2}                                                    //android.view.View[@text='2 ) 利用者は、本アプリで記録等の対象とするてんかん症状を有するご家族等の個人（以下「支援対象者」といい、利用者および支援対象者を総称して「利用者等」といいます。）より、または支援対象者が未成年の場合はその法定代理人より、本規約の内容および支援対象者の症状・生活・療育履歴等を本アプリ上で記録等することにかかる同意を取得するものとし、利用者が支援対象者を本アプリ上に登録した時点で、支援対象者またはその法定代理人は上記同意をしたものとみなされます。']
${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_3}                                                    //android.view.View[@text='3 ) 当社が必要と判断する場合、当社は、あらかじめ利用者に通知することなく、本規約の内容の全部または一部を変更することができるものとします。']
${TERMS_OF_SERVICE_SCREEN_CONTENT_ARTICLE_4}                                                    //android.view.View[@text='4 ) 前項の規定にかかわらず、当社が本アプリの全部または一部を有料化しまたは利用料金を変更する内容の規約変更をおこなう場合には、事前に本アプリ上で当社所定の方法により利用者に通知をおこなうものとします。']