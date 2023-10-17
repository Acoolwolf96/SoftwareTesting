*** Settings ***
Library    OperatingSystem
Library    String
Library    Collections


*** Test Cases ***
Read web addresses from file
    ${file}=    Set Variable    C:\\Users\\nlsnn\\Downloads\\webpages.txt
    File Should Exist    ${file}
    #Read data from file to variable
    ${contents}=    Get File    ${file}
    #Create list from file "webpages.txt"
    @{webpages}=    Split String    ${contents}
    #Set list of webpages as a global varibale
    Set Global Variable    ${webpages}

    

*** Test Cases ***
Find out IP, average ping and create file
    #create empty result file
    Create File   C:\\Users\\nlsnn\\Downloads\\File.txt    
    #Storing the path of newly created file in a variable
    ${file}=    Set Variable        C:\\Users\\nlsnn\\Downloads\\File.txt 
    File Should Exist    ${file}
    #find out how many web address are included in webpages list and store value to variable count
    ${count}    Get Length    ${webpages}
    #loop list of webpages and do ping command
    FOR    ${counter}    IN RANGE    ${count}
        @{ping_result}=    Run And Return Rc And Output    ping ${webpages}[${counter}]
        
        #Find IP address and Ping Time from ping result
        @{ping_info}=    Split String    ${ping_result}[1]
        ${IPAddress}=    Set Variable    ${ping_info}[2]
        ${PingTime}=    Set Variable    ${ping_info}[-1]

        #Add information to result file
        Append To File    ${file}    Website: ${webpages}[${counter}] | IPAddress: ${IPAddress} | PingTime: ${PingTime} ${\n}

        # Test!! Ping time should be under 50ms
        #Getting part of ping time that contains the intger value for seconds
        ${ping_seconds}=    Get Substring    ${PingTime}    0    -2
        ${ping_seconds}=    Convert To Integer    ${ping_seconds}
        Should Be True    ${ping_seconds} < 50
        
    END
    