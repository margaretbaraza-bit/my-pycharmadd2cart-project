*** Settings ***
Documentation    Login related test cases
Library          SeleniumLibrary
Resource         Lumaproject_keywords.robot
Resource         LumaProject_variables.robot
Suite Setup      Precondition for login

*** Test Cases ***
Navigate to home page and Verify Valid login
  [Tags]  DEBUG
  #[Setup]  Preconditions for login
  Login with valid credentials and assert successful login  ${VALID_USERNAME}  ${VALID_PASSWORD}  ${LOGGEDIN_USER}


Verify that invalid credentials should not login successfully
  [Tags]  bmagg
  [Template]  users with invalid credentials should get correct error message
  ${VALID_USERNAME}      ${INVALID_PASSWORD}    ${LOGGEDIN_USER}
  ${INVALID_USERNAME}   ${VALID_PASSWORD}       ${LOGGEDIN_USER}
  ${INVALID_USERNAME}   ${INVALID_PASSWORD}     ${LOGGEDIN_USER}
  ${EMPTY}             ${EMPTY}                 ${LOGGEDIN_USER}

*** Keywords ***
users with invalid credentials should get correct error message
  [Arguments]  ${username}  ${password}  ${loggedInUser}
  Open Browser                   ${URL}  ${BROWSER}
  Maximize Browser Window
  Wait Until Element Is Visible  ${HOMEPAGE_SIGNIN_LINK}
  Click Element                  ${HOMEPAGE_SIGNIN_LINK}
  input text                     ${USERNAME_FIELD}   ${username}
  input text                     ${PASSWORD_FIELD}     ${password}
  Click Element                  ${LOGIN_BTN}
  #wait until page does not contain element   ${loggedInUser}



*** Keywords ***
#Provided precondition
