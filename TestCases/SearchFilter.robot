*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Search Filter For Persolan Items
    Open sheypoor And Maximize Page


*** Keywords ***
Open sheypoor And Maximize Page
    Open Browser    https://www.sheypoor.com/    Firefox
    Maximize Browser Window
Filter Personal items in the search
