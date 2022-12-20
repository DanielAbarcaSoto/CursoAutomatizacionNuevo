*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/resources1.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    #Create Folder at Runtime    Prueba1    Prueba2
    concatenate user and password    Testing    World

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    #${PageTitle}=    Get Title
    #Log    ${PageTitle}
    #${Speed}=    Get Selenium Speed
    #Log    ${Speed}
    #${Value}=    Get Value    xpath://input[@type='submit']
    #Log    ${Value}
    #${text}=    Get Text    xpath://a[@class='displayPopup']
    #Log    ${text}

    #Select From List By Index    name:sex    1
    #${val}=    Get Selected List Value    name:sex
    #Log    ${val}
    #${text_list}=    Get Selected List Label    name:sex
    #Log    ${text_list}
    #${All_labels}=    Get List Items    name:sex
    #Log    ${All_labels}

    #${location}=    Get Location
    #Log    ${location}
    #${pageHTML}=    Get Source
    #Log    ${pageHTML}
    #${attr}=    Get Element Attribute    name:fld_username    class
    #Log    ${attr}

    # numero de elementos con el mismo atributo --> misma clase
    #${cnt}=    Get Element Count    class:field
    #Log    ${cnt}