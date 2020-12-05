*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
Basic Search functionality for sheypoor
##Start TestCase
Open browser      https://www.ebay.com/        chrome
Maximize Browser Window

## search functionality

Input Text          name=q      کفش
Click Element       Xpath=//*[@id="advanced-search"]/form/div[1]/button


##close browser

Close Browser



##SearchResult


*** Keywords ***
