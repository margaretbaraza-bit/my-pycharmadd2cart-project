T*** Settings ***
Documentation  Lumaproject related variables

*** Variables ***
${URL}                            http://magento.softwaretestingboard.com/
${BROWSER}                        chrome
${HOMEPAGE_SIGNIN_LINK}           xpath: /html/body/div[2]/header/div[1]/div/ul/li[2]/a
${USERNAME_FIELD}                 id: email
${PASSWORD_FIELD}                 id: pass
${LOGIN_BTN}                      id: send2
${LOGGEDIN_USER}                  maggie Esther
${INVALID_USERNAME}               david12@gmail.com
${INVALID_PASSWORD}               Testing12
${VALID_USERNAME}                 david123@gmail.com
${VALID_PASSWORD}                 Testing123
${CREATEACC_LINK}                 xpath: /html/body/div[1]/header/div[1]/div/ul/li[3]/a
${FIRSTNAME_FIELD}                id: firstname
${LASTNAME_FIELD}                 id: lastname
${EMAIL_FIELD}                    id: email_address
${NEWACCPASSWORD_FIELD}           id: password
${CONFIRMPASSW_FIELD}             name:password_confirmation
${CREATEACC_BTN}                  xpath: /html/body/div[1]/main/div[3]/div/form/div/div[1]/button/span
${ADDRESSBOOK_LINK}               xpath: /html/body/div[1]/main/div[2]/div[2]/div/div[2]/ul/li[6]/a
${ADDRESS_FIELD}                  xpath: /html/body/div[1]/main/div[2]/div[1]/form/fieldset[2]/div[1]/label/span
${CITY_FIELD}                     xpath: /html/body/div[1]/main/div[2]/div[1]/form/fieldset[2]/div[2]/div/input
${STATE_FIELD}                    name: region_id
${POSTALCODE_FIELD}               name: postcode
${COUNTRY_FIELD}                  name: country_id
${MENTAB}                         xpath: /html/body/div[2]/main/div[3]/div/div[2]/div[1]/a
${ITEMONE}                        xpath: /html/body/div[2]/main/div[3]/div[1]/div[3]/ol/li[12]/div/a/span/span/img
${ITEMONE_SIZE}                   xpath: /html/body/div[2]/main/div[2]/div/div[1]/div[4]/form/div[1]/div/div/div[1]/div/div[5]
${ITEMONE_BLACK}                  id: option-label-color-93-item-49
${ITEMONE_QTY}                    id: qty
${ADD2CARTBTN}                    id: product-addtocart-button
${SHOWCART}                       xpath:/html/body/div[2]/header/div[2]/div[1]/a
${CHECKOUT_BTN}                   id: top-cart-btn-checkout
${SHIPPINGPAGE}                   xpath: /html/body/div[2]/main/div[2]/div/div[2]/div[4]/ol/li[1]/div[1]

*** Keywords ***

