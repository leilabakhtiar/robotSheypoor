*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}     chrome
${url}      https://www.sheypoor.com/
${MAX}      31
*** Test Cases ***
TestDropDown
        Open browser     ${url}     ${browser}
        Maximize Browser Window
        Wait until location is      https://www.sheypoor.com/
        Click Element       Xpath=//*[@id="advanced-search"]/form/div/div[1]/span[2]
        sleep       3
      ##  Click Element       //*[@id="popup-locations"]/div/div[2]/div[2]/ul/li[4]/span
      ## making loop for all lis items in the province
       FOR    ${INDEX}    IN RANGE    3   ${MAX}

    click element       //*[@id="popup-locations"]/div/div[2]/div[2]/ul/li[${Index}]/span
    Sleep       3
    click Element       css:[class="link blue back icon-back"]
        END

