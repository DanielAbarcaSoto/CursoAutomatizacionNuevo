*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Resource    ../Resources/resources1.robot

*** Variables ***

*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    When Create Folder at Runtime    ABC    DEF
    Then concatenate user and password    testing    world