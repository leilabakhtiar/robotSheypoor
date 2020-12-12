*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
Search Filter For Persolan Items
    Open sheypoor And Maximize Page
    Select Personals items in the search drop down


*** Keywords ***
Open sheypoor And Maximize Page
    Open Browser    https://www.sheypoor.com/    Firefox
    Maximize Browser Window
Select Personals items in the search drop down
    Click Element       //span[contains(text(),'همه گروه‌ها')]  
