*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
AssertionTest
    Should Be True    3<5 or 20<10


*** Keywords ***
