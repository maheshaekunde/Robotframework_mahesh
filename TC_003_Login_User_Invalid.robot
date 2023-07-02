*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/TCR_001_Loginresource.robot


Suite Setup             Open My Browser
Suite Teardown          Close My Browser

Test Template     Invalid Inputs

*** Test Cases ***
Invalid username Valid password     johncena@gmail.com          12345
Valid username Invalid password     johncena121@gmail.com       123
Invalid username Invalid password   johncena@gmail.com          123


*** Keywords ***
Invalid Inputs
    Varify Home Page
    Click on 'Signup / Login' button
    Verify 'Login to your account' is visible
    [Arguments]    ${username}      ${password}
    Enter email address     ${username}
    Enter password          ${password}
    Click 'login' button
    Verify error 'Your email or password is incorrect!' is visible
