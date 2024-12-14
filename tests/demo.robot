*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${url}  https://www.facebook.com/
${browser}  chrome   #this is comment
*** Test Cases ***
Demotestcase
        mykeyword
        input text      id:email        sairaj_matsagar
        input text      name:pass       Saiajjsadfghfdsadfgbn
#        click button  ${login_button}

        ${forgotton_link}    set variable   link:Forgotten password?
        click link    ${forgotton_link}
        close browser

*** Keywords ***
mykeyword
        set selenium speed  2
        open browser   ${url}   ${browser}

        maximize browser window
        title should be     Facebook – log in or sign up

        ${login_button}     set variable   xpath://button[@type='submit']
        element should be enabled    ${login_button}
        element should be visible    ${login_button}