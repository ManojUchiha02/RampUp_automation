*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Library     SeleniumLibrary

*** Test Cases ***
Test User Registration
    Open Registration Page
    Fill Registration Form    ${FIRST_NAME}    ${LAST_NAME}    ${ADDRESS}    ${EMAIL}    ${PHONE}    ${GENDER}    ${HOBBIES}    ${LANGUAGE}    ${SKILLS}    ${COUNTRY}    ${YEAR}    ${MONTH}    ${DAY}    ${PASSWORD}    ${CONFIRM_PASSWORD}
    Submit Registration Form
    [Teardown]    Close Browser
