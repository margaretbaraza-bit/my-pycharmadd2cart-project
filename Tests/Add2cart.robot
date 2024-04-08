*** Settings ***
Documentation    Adding items to cart
Library  SeleniumLibrary
Resource  LumaProject_variables.robot
Resource  lumaproject_keywords.robot

*** Test Cases ***
Verifying that user successfully adds item to cart
  Precondition for login
  Login with valid credentials and assert successful login  ${VALID_USERNAME}  ${VALID_PASSWORD}  ${LOGGEDIN_USER}
  Successfully add item to cart


