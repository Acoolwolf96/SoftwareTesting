*** Settings ***

Library    String

Library    OperatingSystem

*** Variables ***

${one}    Donald
${two}    Duke

@{LIST}    test1    test2    200    '@#$%&'

@{names}    Amarachi    Callista    Nelson    Mandy    Kally

*** Test Cases ***
Check outcome
    ${three}=    Set Variable    Donald Duke
    Should Be Equal    ${three}    ${one} ${two}

*** Test Cases ***
TEST
    ${number}=    Set Variable    ${LIST}[3]
    Should Be Equal    ${number}   '@#$%&'

*** Test Cases ***
Loop for numbers
    FOR    ${counter}    IN RANGE    1    20    
        Log    ${counter}
        ${new}=    Set Variable    ${counter}
        
    END


*** Test Cases ***
loop through names
    FOR    ${element}    IN    @{names}
        Log    ${element}
        ${new}=    Set Variable    ${element}[3]
        
    END   


*** Test Cases ***
create a new directory
    Create Directory    C:\\Users\\nlsnn\\Desktop\\PyClass\\testing
    Directory Should Exist    C:\\Users\\nlsnn\\Desktop\\PyClass\\testing

create new file
    ${path}=    Set Variable    C:\\Users\\nlsnn\\Desktop\\PyClass\\testing
    Create File    ${path}\\file1.txt    We are getting there 
    File Should Exist    ${path}\\file1.txt
    File Should Not Be Empty    ${path}\\file1.txt