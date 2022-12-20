*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${Browser}    Chrome

*** Test Cases ***
TC_CASE_RECORDED
    Open Browser    https://www.thetestingworld.com/testings/    ${BROWSER}
    Input Text    //input[@name="fld_username"]    testing
    Input Text    //input[@name="fld_email"]    testing@gmail.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="phone"]    234654234
    Select From List By Value    //select[@name="sex"]    1
    Click Element    //input[@name="terms"]
    Click Element    xpath=(//input)[14]

    sleep    5 seconds