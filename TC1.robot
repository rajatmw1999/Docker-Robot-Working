*** Settings ***
Library     Selenium2Library

*** Test Cases ***
Open Google
    Open Browser    firefox
    GoTo    http://google.com
    ${title}=       Get Title
    Should Be Equal    Google    ${title}
