*** Settings ***
Library           SeleniumLibrary    timeout=1200s    implicit_wait=5s
Suite Setup       Open Browser To App
Suite Teardown    Close Browser
Test Teardown     Capture Page Screenshot

*** Variables ***
${URL}        https://chiangmuan.igovapp.com/
${BROWSER}    chrome
${USERNAME}   maxma4056@gmail.com
${PASSWORD}   maxmazaza123
 
***Keywords***
Open Browser To App
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window

Click Login Button On Homepage
    Wait Until Element Is Visible    //*[contains(text(),'เข้าสู่ระบบ')]    10s
    Click Element    //*[contains(text(),'เข้าสู่ระบบ')]
    Sleep    3s
 
Input LINE Email
    Wait Until Element Is Visible    //input[@placeholder='Email address']    10s
    Input Text    //input[@placeholder='Email address']    ${USERNAME}
 
Input LINE Password
    Wait Until Element Is Visible    //input[@placeholder='Password']    10s
    Input Text    //input[@placeholder='Password']    ${PASSWORD}
 
Click LINE Login Button
    Click Button    //button[contains(text(),'Log in')]

Click Arrow Down Icon
    Click Element    xpath=//div[contains(@class,"mt-12 cursor-pointer flex flex-col justify-center items-center animate-bounce gap-2")]

Clicl Element Go Health
    Click Element    xpath=//a[contains(@class,"items-center tap-highlight-transparent text-medium no-underline hover:opacity-hover active:opacity-disabled flex flex-col relative overflow-hidden h-auto text-foreground box-border bg-content1 outline-solid outline-transparent data-[focus-visible=true]:z-10 data-[focus-visible=true]:outline-2 data-[focus-visible=true]:outline-focus data-[focus-visible=true]:outline-offset-2 shadow-medium rounded-large transition-transform-background motion-reduce:transition-none")]
 
Scroll Down To Health History
    Wait Until Element Is Visible    xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a   timeout=5s
    Scroll Element Into View         xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a
    Click Element                    xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a
 
*** Test Cases ***
 
TC001 - Login and Wait for OTP
    Click Login Button On Homepage
    Input LINE Email
    Input LINE Password
    Click LINE Login Button
    Sleep    10s
    Capture Page Screenshot    after-login.png