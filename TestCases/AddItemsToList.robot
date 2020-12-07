*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
AddAdvertise
        Open browser      https://www.sheypoor.com/        chrome
        Maximize Browser Window

        Click element       css:[class="link blue show-all"]
        sleep       3s
        Click element       //*[@id="popup-category-43626"]/div/ul/li[1]/a/span/strong



       #  click link     بازگشت


        ################################Get Web Elements and put them all in the list
        ${elements}=    Get WebElements    //span[@class='button bordered square-round small pull-right call flex-icon icon-phone']
        FOR    ${element}    IN    @{elements}
            ${text}=    Get Text    ${element}
        Log To Console    ${text}
        END

