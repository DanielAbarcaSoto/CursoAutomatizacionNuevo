*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/resources1.robot
Resource    ../Resources/UserKW.robot

*** Variables ***

*** Test Cases ***
TC_007_DATA_DRIVEN_TEST
    Start Browser and Maximize
    ${row}=    Read number of rows    Hoja1

    FOR    ${i}    IN RANGE    1    ${row}+1
        ${username}=    Read Excel Data of Cell    Hoja1    ${i}    1
        ${pass}=    Read Excel Data of Cell    Hoja1    ${i}    2
        Input Text    //input[@name="fld_username"]    ${username}
        Input Text    //input[@name="fld_password"]    ${pass}
        Click Button    xpath://input[@value='Sign up']
        Sleep    3 seconds
    END

