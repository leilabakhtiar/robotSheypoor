*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${MinPrice}    100000
${MaxPrice}    200000

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
    Click Element       //*[@id="categories-expandable"]//strong[text()='لوازم شخصی']
    ${TotalCount}       Get Element Count        //*[@id="categories"]/div/ul/li
    Log      ${TotalCount}
    FOR      ${INDEX}    IN RANGE    1   ${TotalCount}

                 Click Element    //*[@id="categories"]/div/ul/li[${INDEX}]/a/span[2]
    # To check items prices are as per to the givrn range
    Input Text    id=mnp    ${MinPrice}
    Input Text   id=mxp    ${MaxPrice}

    END
