*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${URL}    http://jimms.fi/
${KEYWORD}    ps5
${PRODUCT}    graphics processor



*** Test Cases ***

Open Jimms
    Open Browser    ${URL}    chrome    options=add_experimental_option("detach", True)


Search Feature On Main Page
    Click Element    id=searchinput
    Input Text    id=searchinput    ${KEYWORD}
    Press Key    id=searchinput    \\13
    Sleep    10s

Take ScreenShot of Product Page
    Capture Page Screenshot      screenshot.png      

Match keyword
    Page Should Contain    ${KEYWORD}



*** Test Cases ***

Return Home
    Click Image        xpath://html/body/header/div/div[2]/div/a/picture/img

Search For Product
    Click Element    id=searchinput
    Input Text    id=searchinput    ${PRODUCT}
    Press Key    id=searchinput    \\13

Click on the first search result
    Click Element    xpath://html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box/div[2]/div[2]/h5/a/span
    Sleep    10s

Add Product to cart     
    Click Element        xpath://html/body/main/div[1]/div[2]/div/jim-product-cta-box/div/div[3]/div[2]/addto-cart-wrapper/div/a      

Open Cart and Take ScreenShot
    Click Element    xpath://html/body/header/div/div[3]/jim-cart-dropdown/div/a

    Capture Page Screenshot    screenshot2.png

   