*** Settings ***
Library    ../TestData/ReadData.py

*** Keywords ***
Read number of rows
    [arguments]    ${sheetname}
    ${maxR}=    fetch number of rows    ${sheetname}
    [return]    ${maxR}

Read Excel Data of Cell
    [arguments]    ${sheetname}    ${row}    ${column}
    ${value}=    fetch cell data    ${sheetname}    ${row}    ${column}
    [return]    ${value}