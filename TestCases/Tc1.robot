*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
LoginTestCase
    open browser   http://demo.nopcommerce.com/     chrome
    SeleniumLibrary.Set Selenium Implicit Wait      120s
    Click Link      Xpath=/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    sleep       5s
    Click Element      Xpath=/html/body/div[6]/div[3]/div/div/div/div[2]/div[1]/div[1]/div[3]/input
    Click Element       Xpath=//*[@id="gender-female"]
    Input Text       Xpath=//*[@id="FirstName"]     leila
    Input Text       Xpath=//*[@id="LastName"]      samsam
    Input Text       Xpath=//*[@id="Email"]     leilabakhtiar.samsam@gmail.com
    Input Text      Xpath=//*[@id="Password"]       leila@123
    Input Text       Xpath=//*[@id="ConfirmPassword"]       leila@123
    Click Element       Xpath=//*[@id="register-button"]




*** Keywords ***



