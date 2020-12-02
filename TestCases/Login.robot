*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${email}        leilabakhtiar.samsam@gmail.com
${paswd}        leila@123


*** Test Cases ***
register
        open browser       https://demo.nopcommerce.com/       chrome
        LoginToApplication
        close browser


*** Keywords ***
LoginToApplication
        Click link     Log in
        Wait until Page Contains Element        ثبت آگهی رایگان
        Input Text     id=Email     ${email}
        Input Text     id=Password      ${paswd}
        Click Element  css:[class="button-1 login-button"]
        sleep       10s
        close browser
