*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${MobileNumber}     09123029533
*** Test Cases ***
AddAdvertise
        Open browser      https://www.sheypoor.com/%D8%A7%DB%8C%D8%B1%D8%A7%D9%86/        chrome
        Maximize Browser Window
        Wait until location is      https://www.sheypoor.com/%D8%A7%DB%8C%D8%B1%D8%A7%D9%86
        Click Element       css:[class="button small icon-plus square-round"]

        Log to console       hello, world.
        Wait Until Page Contains Element        Xpath=//*[@id="item-form"]/div/div[1]/form/p[1]/a
       Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/p[1]/a
       Wait Until Page Contains Element        css:[class="link colored t-cat-43626 icon-category-43626"]
#      Click Element       Xpath=//*[@id="popup-categories"]/div/div[2]/div/ul/li[1]/span
        Click Element       css:[class="link colored t-cat-43626 icon-category-43626"]
        Log to console      selected gorohbandi
        Wait Until Page Contains Element        css:[class="link colored t-cat-43627"]

        Click Element        css:[class="link colored t-cat-43627"]
        Log to console      selected goroh
        #
        Click Element       css:[class="link colored t-cat-43945"]
        Log to console      entekhab gorohbandi
        Wait Until Page Contains Element        Xpath=//*[@id="item-form"]/div/div[1]/form/div[1]/p/a


        log to console      entekhab mashin
        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[1]/p/a


        Click Element       css:[class="icon-attr-445201"]
        Wait Until Page Contains Element       id=a68101

        Input Text      id=a68101     2000
        Wait Until Page Contains Element        id=a68102
        Input Text      id=a68102     3000

        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[3]/p/a
        Wait Until Page Contains Element       css:[class="icon-attr-445243"]

        Click Element       css:[class="icon-attr-445243"]

        Wait Until Page Contains Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[4]/p/a
        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[4]/p/a
        Wait Until Page Contains Element       css:[class="icon-attr-445308"]

        Click Element      css:[class="icon-attr-445308"]




        Scroll Page To Location     0       400
        Wait Until Page Contains Element        Xpath=//*[@id="item-form"]/div/div[1]/form/div[6]/p/a

        # Wait Until Element is visible       Xpath=//*[@id="item-form"]/div/div[1]/form/div[6]/p/a

        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[6]/p/a




        Click Element       css:[class="icon-attr-445317"]
        #Scroll Page To Location     0       350
        Wait until Page contains Element        id=item-form-title
        Input Text      id=item-form-title         آئودی A۵ مدل 2000 سفید
        Wait Until Page Contains Element       id=item-form-description
        Input Text      id=item-form-description      توضیحاتی مانند رنگ، نوع سوخت، نوع گیربکس، بیمه، نداشتن خط و رنگ، سال تولید، کارکرد، نوع سند، شرایط خرید و غیره  و
        Input Text      id=item-form-price        20000000
        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/p[9]/a
        Click Element       css:[class="t-province-1"]
        Click Element       css:[class="t-city-12 group-title"]

        Click Element       css:[class="t-district-6060"]

#       Click Element       Xpath=//*[@id="item-form"]/div/div[2]/div/div/div/div/div[2]
        Choose File         name=qqfile       C:/Users/sheypoor/Desktop/audi1.PNG
         Wait Until Page Contains Element       Xpath=//*[@id="item-form"]/div/div[2]/form/p[2]/button


        Click Element       Xpath=//*[@id="item-form"]/div/div[2]/form/p[2]/button
        Wait Until Page Contains Element       id=username
        Input Text      id=username       ${MobileNumber}
        wait until element is visible      Xpath=//*[@id="session"]/div/form/p[5]/button
        Click Element       Xpath=//*[@id="session"]/div/form/p[5]/button






*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})


