*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${url}    https://omayo.blogspot.com/
${browser}    chrome
*** Test Cases ***
selectradiobutton
       open browser     ${url}    ${browser}
       maximize browser window
       set selenium implicit wait  10seconds
#      click link    link:Create new account
       ${speed}   get selenium implicit wait
       log to console   ${speed}
       click button       xpath: //button[text()='Dropdown']
       click link         link:Facebook
       close browser
*** Keywords ***
