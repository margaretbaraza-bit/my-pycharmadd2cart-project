*** Settings ***
Documentation  Lumaproject related keywords
Library        SeleniumLibrary
Resource       LumaProject_variables.robot
Library        FakerLibrary

*** Keywords ***
Precondition for login
  Open Browser                   ${URL}   ${BROWSER}
  Maximize Browser Window
  Wait Until Element Is Visible  ${HOMEPAGE_SIGNIN_LINK}
  Click Element                  ${HOMEPAGE_SIGNIN_LINK}

Login with valid credentials and assert successful login
  [Arguments]  ${username}  ${password}  ${loggedInUser}
  wait until element is visible  ${USERNAME_FIELD}  6s
  input text   ${USERNAME_FIELD}  ${username}
  wait until element is visible  ${PASSWORD_FIELD}  6s
  input text    ${PASSWORD_FIELD}  ${password}
  wait until element is visible  ${LOGIN_BTN}  6s
  Click Element                 ${LOGIN_BTN}
 # wait until page contains  ${loggedInUser}  6s

Navigate to create a new account page
  Open Browser                   ${URL}   ${BROWSER}
  Maximize Browser Window
  Wait Until Element Is Visible   ${CREATEACC_LINK}
  Click Element    ${CREATEACC_LINK}

Enter firstname for new user
  ${firstname}=  FakerLibrary.firstname
  log  ${firstname}
  Set Test Variable   ${firstname}
  Wait Until Element Is Visible    ${FIRSTNAME_FIELD}
  Input Text    ${FIRSTNAME_FIELD}    ${firstname}

Enter lastname for new user
  ${lastname}=  Fakerlibrary.lastname
  log  ${lastname}
  Set Test Variable    ${lastname}
  Wait Until Element Is Visible    ${LASTNAME_FIELD}
  Input Text    ${LASTNAME_FIELD}     ${lastname}

Enter email for new user
  ${email}=  fakerlibrary.email
  log  ${email}
  Set Test Variable    ${email}
  Wait Until Element Is Visible    ${EMAIL_FIELD}
  Input Text    ${EMAIL_FIELD}    ${email}

Enter a new user password, create and assert that account was created
  input Text   ${NEWACCPASSWORD_FIELD}  Testing123
  input Text   ${CONFIRMPASSW_FIELD}     Testing123
  Click Element    ${CREATEACC_BTN}
  #Wait Until Page Contains    Thank you for registering with main website store  10s

Modify address details and save
   Wait Until Element Is Visible    ${ADDRESSBOOK_LINK}
   Click Element   ${ADDRESSBOOK_LINK}
   Wait Until Element Is Visible    ${ADDRESS_FIELD}
   Input Text   ${ADDRESS_FIELD}    Testing address
   Input Text   ${CITY_FIELD}    Vantaa
   Select From List By Label   ${STATE_FIELD}  Uusiima
   Input Text   ${POSTALCODE_FIELD}     12345
   Select From List By Label   ${COUNTRY_FIELD}  Finland
  # Click Element    ${SAVE_ADDRESS}

Successfully add item to cart
  Wait Until Element Is Visible    ${MENTAB}  6s
  Click Element    ${MENTAB}
  Scroll Element Into View    ${ITEMONE}
  Click Element    ${ITEMONE}
  Wait Until Page Contains    Nadia Elements Shell
  Wait Until Element Is Visible      ${ITEMONE_SIZE}
  Click Element    ${ITEMONE_SIZE}
  Click Element    ${ITEMONE_BLACK}
  Clear Element Text    ${ITEMONE_QTY}
  Input Text     ${ITEMONE_QTY}    2
  Click Element    ${ADD2CARTBTN}
  Wait Until Page Contains    You added Nadia Elements Shell to your shopping cart.
  Wait Until Element Is Visible    ${SHOWCART}  
  Click Element    ${SHOWCART}
  #Wait Until Page Contains    Cart Subtotal:$138.00
  Wait Until Element Is Visible    ${CHECKOUT_BTN}
  Click Element                ${CHECKOUT_BTN}
  Wait Until Page Contains    Shipping Address













