*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Open Google
    Open Browser   https://google.com/   headlessfirefox        
    ${title}=       Get Title
    Should Be Equal    Google    ${title}
