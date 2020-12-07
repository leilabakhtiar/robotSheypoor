*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}       chrome
${url}      https://www.sheypoor.com/
${MAX}      61
${CityName}
*** Test Cases ***
TestProvinceCity
        open browser     ${url}     ${browser}
        Maximize Browser Window
        Wait until location is      https://www.sheypoor.com/



         Click Element       Xpath=//*[@id="advanced-search"]/form/div/div[1]/span[2]
        sleep       3

        #click on the first Province Azarbaijan

         FOR    ${INDEX}    IN RANGE    2   ${MAX}


        ${ProvinceName}     Get Text     css:[class="t-province-${INDEX}"]

        Log to Console  ${ProvinceName}

       Click Element       css:[class="t-province-${INDEX}"]
       sleep       3

              # Get city name
         ${CityName}        Get Text        //*[@id="popup-locations"]/div/div[2]/div[1]/ul/li[1]/span
          Log to console     ${CityName}
        Click Element      //*[@id="popup-locations"]/div/div[2]/div[1]/ul/li[1]/span

        sleep       3

              Element Text Should Be      //*[@id="breadcrumbs"]/ul/li[2]/a       ${ProvinceName}

        # check city name is writen in home page
        Element Text Should Be      //*[@id="breadcrumbs"]/ul/li[3]/b       ${CityName}



        END


        close browser



