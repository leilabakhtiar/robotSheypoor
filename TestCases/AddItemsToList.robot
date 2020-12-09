*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
AddAdvertise
    LoginToSheypoorAndGetAllArticlesForVehicles
    GetEachPhoneAndValidate




*** Keywords ***
LoginToSheypoorAndGetAllArticlesForVehicles
    Open browser      https://www.sheypoor.com/        Firefox
    Maximize Browser Window
    Click element       css:[class="link blue show-all"]
    Click element       //*[@id="popup-category-43626"]/div/ul/li[1]/a/span/strong
GetEachPhoneAndValidate
#Getting all articles and keep them in the elemnts list
    ${elements}=    Get WebElements     //span[contains(@class,'button bordered square-round small icon-phone pull-right call flex-icon')]
#read each elemt's phone in elements list and validate the phone number
    FOR    ${element}    IN    @{elements}
    Click Element       ${element}
    Wait until Element Is Enabled      ${element}
    ${phone}=        Get Text       ${element}
# validate the phone number
    Log To Console          ${phone}
    ${RegPhon}=^(09(\d{9})|09?(\d{9}))$
    Should match regexp  ${phone}  ${RegPhon}
    END
