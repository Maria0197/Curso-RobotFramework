***Setting***
Documentation       Existe un documento en texto con los pasos manuales
Library     SeleniumLibrary

***Variables***
${browser}    chrome
${homepage}   https://www.winstoncastillo.com/udemy/

***Keywords***
Open Homepage
     Open browser   ${homepage}   ${browser}
     Title Should Be     Hola Mundo!

***Test Cases***
G001 IR AL BLOG DE WINSTON CASTILLO
    Open Homepage
    Set Focus To Element    xpath=/html/body/div[1]/div/div[2]/a[1]
    Click Link       xpath=/html/body/div[1]/div/div[2]/a[1]
    Wait Until Element Is Visible    xpath=//*[@id="page-header"]/div[1]/div/div/div/a
    Close Browser

G002 ABRIR VENTANA MODAL
    Open Homepage
    Set Focus to element       xpath=/html/body/div[1]/div/div[2]/a[2]
    Click Link      xpath=/html/body/div[1]/div/div[2]/a[2]
    Title Should Be     Hola Mundo!
    Wait Until Element Is Visible      xpath=//*[@id="exampleModal"]/div/div/div[1]
    Close Browser

G003 ABRIR HOMEPAGE
    Open Homepage
    Wait Until Element Is Visible    Xpath=//*[@id="Menu "]/li[4]/a
    Close Browser