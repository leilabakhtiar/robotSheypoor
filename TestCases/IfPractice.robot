*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
IfPracticing
    Run Keyword If      2>5  Number is correct
    ...   ELSE   raise Exception("Fail")



*** Keywords ***
