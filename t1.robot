*** Settings ***
Documentation                   This is a demo program to understand this framework better
Library                         SeleniumLibrary
Library                         Selenium

*** Test Cases ***
SampleTest
    [Documentation]                 User can open the homepage and see the title of page
    Open Browser                    https://www.google.com/     chrome
    Wait Until Page Contains        Google offered in
    Close Browser

LoginTest
    [Documentation]     User can login to website using valid credentials
    Open Browser        https://demo.nopcommerce.com/     chrome
    Click link        xpath://a[@class='ico-login']
    input text        id:Email      coder@wisdom.com
    input password      id:Password     123456
    click element       xpath://button[@class='button-1 login-button']
    click element       xpath://a[@class='ico-logout']
    close browser