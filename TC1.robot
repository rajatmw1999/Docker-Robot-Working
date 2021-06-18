*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Open Google
    Open Browser   https://google.com/   firefox
    ${title}=       Get Title
    Should Be Equal    Google    ${title}
