*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${HOMEPAGE}    http://localhost/index.php/th/
${HOMEPAGE2}    http://localhost/index.php/en/
${BROWSER}    chrome
${EMPTY}
*** Test Cases ***

Click language to eng
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Input Text    modlgn-username    ryujin417
    Input Text    modlgn-passwd    ryujin417
    Click Button    Submit
    Click Link    xpath=//a[@href="/index.php/th/2021-03-02-02-29-07"]
    Click Element    xpath=//a[@href="/index.php/en/"]
    Wait Until Location Contains    http://localhost/index.php/en/create-announcement
    Close Browser

Click language to thai
    Open Browser    ${HOMEPAGE2}    ${BROWSER}
    Input Text    modlgn-username    ryujin417
    Input Text    modlgn-passwd    ryujin417
    Click Button    Submit
    Click Link    xpath=//a[@href="/index.php/en/create-announcement"]
    Click Element    xpath=//a[@href="/index.php/th/"]
    Wait Until Location Contains    http://localhost/index.php/th/2021-03-02-02-29-07
    Close Browser
    
