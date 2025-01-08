*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Registration Page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
Fill Registration Form
    [Arguments]    ${first_name}    ${last_name}    ${address}    ${email}    ${phone}    ${gender}    ${hobbies}    ${language}    ${skills}    ${country}    ${year}    ${month}    ${day}    ${password}    ${confirm_password}
    Input Text    xpath=//input[@placeholder='First Name']    ${first_name}
    Input Text    xpath=//input[@placeholder='Last Name']     ${last_name}
    Input Text    xpath=//textarea[@ng-model='Adress']       ${address}
    Input Text    xpath=//input[@type='email']               ${email}
    Input Text    xpath=//input[@type='tel']                 ${phone}
    Click Element  xpath=//input[@value='${gender}']
    FOR    ${hobby}    IN    @{hobbies}
        Click Element  xpath=//input[@value='${hobby}']
    END
    Click Element  xpath=//div[@id='msdd']
    Click Element  xpath=//a[text()='${language}']
    Select From List By Value    xpath=//select[@id='Skills']    ${skills}
    Select From List By Value    xpath=//select[@id='countries']    ${country}
    Select From List By Value    xpath=//select[@id='yearbox']    ${year}
    Select From List By Value    xpath=//select[@placeholder='Month']    ${month}
    Select From List By Value    xpath=//select[@id='daybox']    ${day}
    Input Text    xpath=//input[@id='firstpassword']          ${password}
    Input Text    xpath=//input[@id='secondpassword']         ${confirm_password}
Submit Registration Form
    Click Element  xpath=//button[@id='submitbtn']
    Sleep  2s
Open Browser To DemoQA
    [Arguments]    ${url}
    Open Browser    ${url}    browser=chrome
    Maximize Browser Window
    Page Should Contain    ToolsQA
Drag and Drop Example
    Open Browser    ${DRAG_DROP_URL}    browser=chrome
    Drag And Drop   id:box6    id:box106
    Page Should Contain    Norway
