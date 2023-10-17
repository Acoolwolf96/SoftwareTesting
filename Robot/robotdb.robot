*** Settings ***

Library    DatabaseLibrary
Library    String
Library    Collections
Library    OperatingSystem


*** Variables ***

${dbname}    robodb
${dbuser}    robot
${dbpass}    password
${dbhost}    localhost
${dbport}    3306
${path}    C:\Users\nlsnn\Desktop\PyClass\Robot


*** Keywords ***
Make Connection
    [Arguments]    ${dbtoconnect}
    Connect To Database    pymysql    ${dbtoconnect}    ${dbuser}    ${dbpass}    ${dbhost}    ${dbport}


*** Test Cases ***
Create test Databases
    Make Connection    mysql
    Execute Sql String    drop database if exist ${dbname};
    Execute Sql String    create database ${dbname};
    Execute Sql String    use ${dbname};


    ${GetCommands}=    Get File    ${path}create_clauses.txt
    @{CreateCommands}=    Split String    ${GetCommands}    ;
    Log    ${CreateCommands}

    ${TableCount}=    Get Length    ${CreateCommands}
    ${IndexToBeRemoved}=    Evaluate    ${TableCount}-1
    Remove From List    ${CreateCommands}    ${IndexToBeRemoved}
    ${TableCount}=    Get Length    ${CreateCommands}

    FOR    ${Index}    IN RANGE    ${TableCount}
        Log    ${Index}
        Execute Sql String    ${CreateCommands}[${Index}]
        
    END

    Set Global Variable    ${TableCount}

