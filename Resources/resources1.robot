*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Keywords ***
Start Browser and Maximize
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Create Folder at Runtime
    [Arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_sub_folder    ${foldername}    ${subfoldername}
    Log    "Task Done Successfully"

concatenate user and password
    [Arguments]    ${username}    ${password}
    ${result}=    concatenate_two_values    ${username}    ${password}
    Log    ${result}