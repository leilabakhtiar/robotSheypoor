*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
IfPracticing
    Run Keyword If      10>5   Number is correct
    ...  ELSE   Number is incorect


*** Keywords ***
Number is correct
    Log  pass
Number is incorect
    Log  fail
