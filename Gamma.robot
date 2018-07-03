*** Settings ***
Suite Teardown    Close All Browsers
Library           Selenium2Library
Library           OperatingSystem

*** Variables ***
${Browser}        chrome
${Link}           http://www.gammapartners.com/
${Delay_PageLoad}    5s
${Delay_Inputs}    5s

*** TestCases ***
Open Google Homepage
    View Main Page

Locate Careers In Menu
    Select Careers

Select Careers
    Choose Careers

*** Keywords ***
View Main Page
    Open Browser                     ${Link}                                                                                   ${Browser}
    Maximize Browser Window

Select Careers
    Wait Until Element Is Visible    css=#menu-item-593 > a
    Click Element                    css=#menu-item-593 > a 
    Sleep                            ${Delay_PageLoad}

Choose Careers 
    Wait Until Element Is Visible    css=#careersMargin > div > div.et_pb_module.et_pb_toggle.custom-borders.home-content-text.et_pb_toggle_1.et_pb_toggle_item.et_pb_toggle_close > h5
    Click Element                    css=#careersMargin > div > div.et_pb_module.et_pb_toggle.custom-borders.home-content-text.et_pb_toggle_1.et_pb_toggle_item.et_pb_toggle_close > h5
    Sleep                            ${Delay_PageLoad}
