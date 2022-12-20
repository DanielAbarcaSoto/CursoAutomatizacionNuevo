*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/resources1.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Start Browser and Maximize
    #set selenium implicit wait    10 seconds

    Enter Username Email    TestingWorld    testingworldindia@gmail.com
    #Set selenium speed    1 seconds
    sleep    5 seconds
    #Clear Element Text    name:fld_username
    #Select Radio Button    add_type    office
    #Select Checkbox    name:terms
    #Select From List By Index    name:sex    1
    #Select From List By Value    name:sex    2
    #Select From List By Label    name:sex    Male
    #Click Link    xpath://a[text()='Read Detail']
    #Click Link    xpath://a[text()='X']
    #Click Button    xpath://input[@value='Sign up']

*** Keywords ***
Enter Username Email
    [Arguments]    ${username}    ${email}
    Input Text    name:fld_username     ${username}
    Input Text    xpath://input[@name='fld_email']    ${email}