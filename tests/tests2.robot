*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot
Resource   ../resources/variables.robot

*** Test Cases ***
Test DemoQA Form
    Open Browser To DemoQA    ${DEMOQA_URL}
    Fill Registration Form
    Close Browser

Test Drag and Drop
    Drag and Drop Example
    Close Browser
