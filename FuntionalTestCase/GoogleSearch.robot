*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
SampleTestCase
        [documentation]  GoogleTest     [Return]
        [Tags]  Regression


        Open Browser        https://www.google.com/  chrome
        Close Browser
*** Keywords ***


