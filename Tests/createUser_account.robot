*** Settings ***
Documentation    tests verify new account creation
Library          SeleniumLibrary
Resource         lumaproject_keywords.robot
Resource         LumaProject_variables.robot

*** Test Cases ***
Verify user is able to create account
  Navigate to create a new account page
  Enter firstname for new user
  Enter lastname for new user
  Enter email for new user
  Enter a new user password, create and assert that account was created



