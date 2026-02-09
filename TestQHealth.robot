*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser To App
Suite Teardown    Close Browser
Test Teardown     Capture Page Screenshot

*** Variables ***
${URL}        https://chiangmuan.igovapp.com/
${BROWSER}    chrome



*** Test Cases ***
Open Health Database Page
    Wait Until Element Is Visible
    ...                              xpath=//div[contains(@class,"mt-12 cursor-pointer flex flex-col justify-center items-center animate-bounce gap-2")]    15s
    Click Arrow Down Icon
    Clicl Element Go Health
    Scroll Down To Health History


*** Keywords ***
Open Browser To App
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window

Click Arrow Down Icon
    Click Element    xpath=//div[contains(@class,"mt-12 cursor-pointer flex flex-col justify-center items-center animate-bounce gap-2")]

Clicl Element Go Health
    Click Element    xpath=//a[contains(@class,"items-center tap-highlight-transparent text-medium no-underline hover:opacity-hover active:opacity-disabled flex flex-col relative overflow-hidden h-auto text-foreground box-border bg-content1 outline-solid outline-transparent data-[focus-visible=true]:z-10 data-[focus-visible=true]:outline-2 data-[focus-visible=true]:outline-focus data-[focus-visible=true]:outline-offset-2 shadow-medium rounded-large transition-transform-background motion-reduce:transition-none")]
 
Scroll Down To Health History
    Wait Until Element Is Visible    xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a   timeout=5s
    Scroll Element Into View         xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a
    Click Element                    xpath= //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a








##<a role="button" href="/health/list?type=ตรวจสุขภาพปกติ" tabindex="0" data-react-aria-pressable="true" aria-label="ประวัติการตรวจสุขภาพ" class="z-0 group relative inline-flex items-center justify-center box-border appearance-none select-none whitespace-nowrap font-normal subpixel-antialiased overflow-hidden tap-highlight-transparent transform-gpu data-[pressed=true]:scale-[0.97] cursor-pointer outline-solid outline-transparent data-[focus-visible=true]:z-10 data-[focus-visible=true]:outline-2 data-[focus-visible=true]:outline-focus data-[focus-visible=true]:outline-offset-2 text-small gap-2 px-0 !gap-0 transition-transform-colors-opacity motion-reduce:transition-none bg-default min-w-10 data-[hover=true]:opacity-hover size-40 bg-linear-to-b from-red-200 to-red-500 rounded-full text-white dark:text-black"><svg aria-hidden="true" focusable="false" class="octicon octicon-list-ordered" viewBox="0 0 24 24" width="80" height="80" fill="currentColor" display="inline-block" overflow="visible" style="vertical-align: text-bottom;"><path d="M3.604 3.089A.75.75 0 0 1 4 3.75V8.5h.75a.75.75 0 0 1 0 1.5h-3a.75.75 0 1 1 0-1.5h.75V5.151l-.334.223a.75.75 0 0 1-.832-1.248l1.5-1a.75.75 0 0 1 .77-.037ZM8.75 5.5a.75.75 0 0 0 0 1.5h11.5a.75.75 0 0 0 0-1.5H8.75Zm0 6a.75.75 0 0 0 0 1.5h11.5a.75.75 0 0 0 0-1.5H8.75Zm0 6a.75.75 0 0 0 0 1.5h11.5a.75.75 0 0 0 0-1.5H8.75ZM5.5 15.75c0-.704-.271-1.286-.72-1.686a2.302 2.302 0 0 0-1.53-.564c-.535 0-1.094.178-1.53.565-.449.399-.72.982-.72 1.685a.75.75 0 0 0 1.5 0c0-.296.104-.464.217-.564A.805.805 0 0 1 3.25 15c.215 0 .406.072.533.185.113.101.217.268.217.565 0 .332-.069.48-.21.657-.092.113-.216.24-.403.419l-.147.14c-.152.144-.33.313-.52.504l-1.5 1.5a.75.75 0 0 0-.22.53v.25c0 .414.336.75.75.75H5A.75.75 0 0 0 5 19H3.31l.47-.47c.176-.176.333-.324.48-.465l.165-.156a5.98 5.98 0 0 0 .536-.566c.358-.447.539-.925.539-1.593Z"></path></svg></a>