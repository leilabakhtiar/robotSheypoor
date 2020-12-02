*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${MobileNumber}     09123029533
*** Test Cases ***
AddAdvertise
        Open browser      https://www.sheypoor.com/%D8%A7%DB%8C%D8%B1%D8%A7%D9%86/        chrome
        Wait until location is      https://www.sheypoor.com/%D8%A7%DB%8C%D8%B1%D8%A7%D9%86
        Click Element       css:[class="button small icon-plus square-round"]
        Wait until page contains        ثبت آگهی
       Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/p[1]/a
       sleep        5
#      Click Element       Xpath=//*[@id="popup-categories"]/div/div[2]/div/ul/li[1]/span
        Click Element       css:[class="link colored t-cat-43626 icon-category-43626"]
        Sleep       5

        Click Element        css:[class="link colored t-cat-43627"]
        sleep       5
        Click Element       css:[class="link colored t-cat-43945"]
        sleep       5



        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[1]/p/a
        sleep       5

        Click Element       css:[class="icon-attr-445201"]
        sleep       5
        Input Text      id=a68101     2000
        Input Text      id=a68102     3000

        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[3]/p/a
        sleep       5

        Click Element       css:[class="icon-attr-445243"]
        sleep       5

        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[4]/p/a
        sleep       5

        Click Element       css:[class="icon-attr-445308"]
        sleep       5
        Scroll Page To Location     0       400

      #  Wait Until Element is visible       Xpath=//*[@id="item-form"]/div/div[1]/form/div[6]/p/a

        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/div[6]/p/a
        sleep       5

        #here
        Click Element       css:[class="icon-attr-445317"]
        #Scroll Page To Location     0       350
        sleep       5
        Input Text      id=item-form-title         آئودی A۵ مدل 2000 سفید
        Sleep       5s
        Input Text      id=item-form-description      توضیحاتی مانند رنگ، نوع سوخت، نوع گیربکس، بیمه، نداشتن خط و رنگ، سال تولید، کارکرد، نوع سند، شرایط خرید و غیره  و
        Input Text      id=item-form-price        20000000
        Click Element       Xpath=//*[@id="item-form"]/div/div[1]/form/p[9]/a
        Click Element       css:[class="t-province-1"]
        Click Element       css:[class="t-city-12 group-title"]

        Click Element       css:[class="t-district-6060"]

#       Click Element       Xpath=//*[@id="item-form"]/div/div[2]/div/div/div/div/div[2]
        Choose File         name=qqfile       C:/Users/sheypoor/Desktop/audi1.PNG
        Sleep       7S
        Click Element       Xpath=//*[@id="item-form"]/div/div[2]/form/p[2]/button

        Input Text      id=username       ${MobileNumber}
        sleep       2s
        Click Element       Xpath=//*[@id="session"]/div/form/p[5]/button
        sleep       5s





*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})


