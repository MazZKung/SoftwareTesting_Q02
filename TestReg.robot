*** Settings ***
Library           SeleniumLibrary            timeout=1200s    implicit_wait=5s
Suite Setup       Open Browser To App
Suite Teardown    Close Browser
Test Teardown     Capture Page Screenshot

*** Variables ***
${URL}         https://chiangmuan.igovapp.com/
${BROWSER}     chrome
${USERNAME}    maxma4056@gmail.com
${PASSWORD}    maxmazaza123

*** Test Cases ***
##Login with Line Account
Login and Wait for OTP
    Click Login Button On Homepage
    Input LINE Email
    Input LINE Password
    Click LINE Login Button
    Sleep                             20s
    Capture Page Screenshot 

Click Confirm
    Click Confirm Button

##ID Number
Fill From Element
    Fill ID

##Name Details
Fill Surname Element
    Fill Surname

Fill Name Element
    Fill Name

Fill LastName Element
    Fill LastName

##Personal Details
Select gender
    Select list gender

Fill Birt of date
    Fill Birtday

Fill nationality
    Fill Nationality

Fill religion
    Fill Religion

Fill phone
    Fill Phone

##Address according to ID card
Fill House number Element
    Fill House number

Fill Village number Element
    Fill Village number

Fill Road Element
    Fill Road    

Fill Alley Element
    Fill Alley

Fill Province Element
    Fill Province

Fill District Element
    Fill District

Fill SubDistrict Element
    Fill SubDistrict

##Address according to ID card
Checkbox according to ID card
    Check according to ID card

##Social Infomation
Fill Job Element
    Fill Job

Fill Salary Element
    Fill Salary

Fill Hightet Education Element
    Fill Hightet Education

Fill Marital status Element
    Fill Marital status

##footer
Check Agree terms and conditions Element
    Check Agree terms and conditions

##send form
Click Submit from Element
    Click Submit from











##############--------------------##############
***Keywords***
##Login with Line Account
Open Browser To App
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window

Click Login Button On Homepage
    Wait Until Element Is Visible    //*[contains(text(),'เข้าสู่ระบบ')]    10s
    Click Element                    //*[contains(text(),'เข้าสู่ระบบ')]
    Sleep                            3s

Input LINE Email
    Wait Until Element Is Visible    //input[@placeholder='Email address']    10s
    Input Text                       //input[@placeholder='Email address']    ${USERNAME}

Input LINE Password
    Wait Until Element Is Visible    //input[@placeholder='Password']    10s
    Input Text                       //input[@placeholder='Password']    ${PASSWORD}

Click LINE Login Button
    Click Button    //button[contains(text(),'Log in')]

##Click confirm button
Click Confirm Button
    Click Element    xpath= //*[@id="«r66»"]/footer/div/button
##**********************REG**************************##
##ID Number
Fill ID
    Wait Until Element Is Visible    xpath=//input[@maxlength='13' and @minlength='13']    10s
    Input Text                       xpath=//input[@maxlength='13' and @minlength='13']    1500701356476

##Name Details
Fill Surname
    Wait Until Element Is Visible    xpath=//input[@role='combobox' and @aria-autocomplete='list']    10s
    Click Element                    xpath=//input[@role='combobox' and @aria-autocomplete='list']
    Clear Element Text               xpath=//input[@role='combobox' and @aria-autocomplete='list']
    Input Text                       xpath=//input[@role='combobox' and @aria-autocomplete='list']    นาย    
    Wait Until Element Is Visible    xpath=//li[contains(.,'นาย')]                                    5s
    Click Element                    xpath=//li[contains(.,'นาย')]

Fill Name
    Wait Until Element Is Visible    xpath=//label[normalize-space()='ชื่อ']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='ชื่อ']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='ชื่อ']/following::input[1]    ยอดศักดิ์

Fill LastName
    Wait Until Element Is Visible    xpath=//label[normalize-space()='นามสกุล']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='นามสกุล']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='นามสกุล']/following::input[1]    แสงสุวรรณ์

##Personal Details
Select list gender
    Wait Until Element Is Visible    xpath=//label[normalize-space()='เพศ']/ancestor::button    10s
    Click Element                    xpath=//label[normalize-space()='เพศ']/ancestor::button
    Wait Until Element Is Visible    xpath=//li[normalize-space()='ชาย']                        5s
    Click Element                    xpath=//li[normalize-space()='ชาย']

Fill Birtday
    Click Element    xpath=//div[@role='spinbutton' and @data-type='day']
    Input Text       xpath=//div[@role='spinbutton' and @data-type='day']    27

    Click Element    xpath=//div[@role='spinbutton' and @data-type='month']
    Input Text       xpath=//div[@role='spinbutton' and @data-type='month']    08

    Click Element    xpath=//div[@role='spinbutton' and @data-type='year']
    Input Text       xpath=//div[@role='spinbutton' and @data-type='year']    2548

Fill Nationality
    Wait Until Element Is Visible    xpath=//label[normalize-space()='สัญชาติ']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='สัญชาติ']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='สัญชาติ']/following::input[1]    ไทย

Fill Religion
    Wait Until Element Is Visible    xpath=//label[normalize-space()='ศาสนา']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='ศาสนา']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='ศาสนา']/following::input[1]    พุทธ

Fill Phone
    Wait Until Element Is Visible    xpath=//label[normalize-space()='เบอร์โทรศัพท์']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='เบอร์โทรศัพท์']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='เบอร์โทรศัพท์']/following::input[1]    0954488430

##Address according to ID card
Fill House number
    Wait Until Element Is Visible    xpath=//label[normalize-space()='บ้านเลขที่']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='บ้านเลขที่']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='บ้านเลขที่']/following::input[1]    26/2

Fill Village number
    Wait Until Element Is Visible    xpath=//label[normalize-space()='หมู่ที่']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='หมู่ที่']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='หมู่ที่']/following::input[1]    7

Fill Road
    Wait Until Element Is Visible    xpath=//label[normalize-space()='ถนน']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='ถนน']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='ถนน']/following::input[1]    -

Fill Alley
    Wait Until Element Is Visible    xpath=//label[normalize-space()='ตรอก/ซอย']/following::input[1]    10s
    Click Element                    xpath=//label[normalize-space()='ตรอก/ซอย']/following::input[1]
    Input Text                       xpath=//label[normalize-space()='ตรอก/ซอย']/following::input[1]    -

Fill Province
    Wait Until Element Is Visible    xpath=//label[normalize-space()='จังหวัด']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    10s
    Click Element                    xpath=//label[normalize-space()='จังหวัด']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Clear Element Text               xpath=//label[normalize-space()='จังหวัด']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Input Text                       xpath=//label[normalize-space()='จังหวัด']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    เชียงใหม่    
    Wait Until Element Is Visible    xpath=//li[contains(.,'เชียงใหม่')]                                                                              5s
    Click Element                    xpath=//li[contains(.,'เชียงใหม่')]

Fill District
    Wait Until Element Is Visible    xpath=//label[normalize-space()='อำเภอ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    10s
    Click Element                    xpath=//label[normalize-space()='อำเภอ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Clear Element Text               xpath=//label[normalize-space()='อำเภอ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Input Text                       xpath=//label[normalize-space()='อำเภอ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    แม่ริม    
    Wait Until Element Is Visible    xpath=//li[contains(.,'แม่ริม')]                                                                               5s
    Click Element                    xpath=//li[contains(.,'แม่ริม')]

Fill SubDistrict
    Wait Until Element Is Visible    xpath=//label[normalize-space()='ตำบล']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    10s
    Click Element                    xpath=//label[normalize-space()='ตำบล']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Clear Element Text               xpath=//label[normalize-space()='ตำบล']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Input Text                       xpath=//label[normalize-space()='ตำบล']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    สันโป่ง    
    Wait Until Element Is Visible    xpath=//li[contains(.,'สันโป่ง')]                                                                             5s
    Click Element                    xpath=//li[contains(.,'สันโป่ง')]

##Address according to ID card
Check according to ID card
    Select Checkbox    xpath=//input[@aria-label='ใช้ตามที่อยู่ตามบัตรประชาชน']



##Social Infomation
Fill Job
    Wait Until Element Is Visible    xpath=//label[normalize-space()='อาชีพ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    10s
    Click Element                    xpath=//label[normalize-space()='อาชีพ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Clear Element Text               xpath=//label[normalize-space()='อาชีพ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']
    Input Text                       xpath=//label[normalize-space()='อาชีพ']/ancestor::div[@data-slot='input-wrapper']//input[@role='combobox']    นักเรียน    
    Wait Until Element Is Visible    xpath=//li[contains(.,'นักเรียน / นักศึกษา')]                                                                  5s
    Click Element                    xpath=//li[contains(.,'นักเรียน / นักศึกษา')]

Fill Salary
    Wait Until Element Is Visible    xpath=//label[normalize-space()='รายได้ต่อเดือน']/following::input[@type='text'][1]    10s
    Click Element                    xpath=//label[normalize-space()='รายได้ต่อเดือน']/following::input[@type='text'][1]
    Input Text                       xpath=//label[normalize-space()='รายได้ต่อเดือน']/following::input[@type='text'][1]    5000

Fill Hightet Education
    Click Element                    xpath=//button[.//label[normalize-space()='การศึกษาสูงสุด']]
    Wait Until Element Is Visible    xpath=//li[normalize-space()='มัธยมศึกษาตอนปลาย / ปวช.']        5s
    Click Element                    xpath=//li[normalize-space()='มัธยมศึกษาตอนปลาย / ปวช.'] 

Fill Marital status
    Click Element                    xpath=//button[.//label[normalize-space()='สถานะการสมรส']]
    Wait Until Element Is Visible    xpath=//li[normalize-space()='โสด']                           5s
    Click Element                    xpath=//li[normalize-space()='โสด']                           

Check Agree terms and conditions
    Click Element    xpath=//span[normalize-space()='ข้าพเจ้ายินยอมการให้ข้อมูลส่วนบุคคลสำหรับบริการประชาชนของเทศบาลเทศบาลตำบลเชียงม่วน']/ancestor::label


Click Submit from
    Click Element    xpath=//button[@type='submit' and normalize-space()='ยืนยัน']
