*** Settings ***
Library    String
Library    SeleniumLibrary


*** Variables ***
${BASE_URL}     http://blazedemo.com/
${START_CITY}    Boston
${DESTINATION}    Cairo
${FLIGHT_PRICE}
${FLIGHT_NUMBER}
${AIRLINE}
${TOTAL_PRICE}



*** Test Cases ***

Open blazedemo
    Open Browser    ${BASE_URL}    chrome    options=add_experimental_option("detach", True)

Verify Page Says Welcome Message
    Wait Until Page Contains    Welcome to the Simple Travel Agency!

Select Starting City
    Select From List By Label    name:fromPort    ${START_CITY}

Select Destination City
    Select From List By Label    name:toPort    ${DESTINATION}

Check Find Flights Button
    Page Should Contain Button        Find Flights

Press Find Flights Button
    Click Button    Find Flights

Check that the page says Flights from Boston to Cairo
    Wait Until Page Contains    Flights from ${START_CITY} to ${DESTINATION}

Select Flight
    Click Button    xpath://html/body/div[2]/table/tbody/tr[1]/td[1]/input    

Store Flight Details
    ${FLIGHT_PRICE} =    Get Text    xpath://html/body/div[2]/p[3]
    ${FLIGHT_NUMBER} =    Get Text    xpath://html/body/div[2]/p[2]
    ${AIRLINE} =    Get Text    xpath://html/body/div[2]/p[1]   

Check Flight Details on Flight Details Page
    Wait Until Page Contains    ${FLIGHT_PRICE}
    Wait Until Page Contains    ${FLIGHT_NUMBER}
    Wait Until Page Contains    ${AIRLINE}    

Store Total Flight Price
    ${TOTAL_PRICE} =    Get Text    xpath://html/body/div[2]/p[5]/em
    Log    Total Flight Price: ${TOTAL_PRICE}    

Fill passenger information
    Click Element    id=inputName
    Input Text  id=inputName  Donald Duck

    Click Element    id=address
    Input Text  id=address  1234 Elm St

    Click Element    id=city
    Input Text  id=city  Hameenlinna

    Click Element    id=state
    Input Text  id=state  Kanta-Hame

    Click Element    id=zipCode
    Input Text  id=zipCode  12345

    Click Element    id=creditCardNumber
    Input Text  id=creditCardNumber  30569309025904

    Click Element    name:cardType
    Select From List By Value    name:cardType    dinersclub

    Click Element    name:creditCardMonth  
    Set Global Variable  ${card_month}    12
    Input Text    name:creditCardMonth    ${card_month}

    Click Element    name:creditCardYear
    Set Global Variable    ${card_year}    2030
    Input Text        name:creditCardYear    ${card_year}
    
    Click Element    name:rememberMe

    Click Button    xpath://html/body/div[2]/form/div[11]/div/input

Check the confirmation page
    Wait Until Page Contains  Thank you for your purchase today!    

Check that the expiration time is correct
    ${expiration_time} =  Get Text    xpath://html/body/div[2]/div/table/tbody/tr[5]/td[2]

Check that the total price is correct 
    Should Be Equal As Strings    ${TOTAL_PRICE}    ${FLIGHT_PRICE}

Close Browser
    Close Browser    