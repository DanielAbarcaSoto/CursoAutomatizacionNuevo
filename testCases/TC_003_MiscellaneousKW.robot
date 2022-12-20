*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

    ${username}=    Read Element Locator    registration.username_textbox_name
    ${email}=    Read Element Locator    registration.email_textbox_name
    ${pass}=    Read Element Locator    registration.pass_textbox_name
    Input Text    name:${username}   Testing
    Input Text    name:${email}    testingworldindia@gmail.com
    Input Text    name:${pass}    ABCD
    sleep    2 seconds
    #capture page screenshot    TC3.png

*** Keywords ***
Read Element Locator
    [arguments]    ${JsonPath}
    ${result}=    read locator from json    ${JsonPath}
    [return]    ${result}