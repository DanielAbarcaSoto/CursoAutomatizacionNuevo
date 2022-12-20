*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***


*** Test Cases ***
TC_002 Variable Test
    # MOSTRAR VARIABLE EN PANTALLA
    #${var1}=    set variable    HelloWorld
    #log to console    ${var1}

    # CREAR LISTA, MOSTRAR EN PANTALLA LA LONGITUD Y ELEMENTO DE LA LISTA
    #@{List1}    create list    Hello    22    23.23    World
    #${list_length}    get length    ${List1}
    #log to console    ${list_length}
    #${list_data}=    get from list    ${List1}    3
    #log to console    ${list_data}

    # CREAR UN BUCLE FOR
    #FOR    ${i}    IN RANGE    1    5
    #   log to console    ${i}
    #END

    #FOR    ${i}    IN    @{List1}
    #    log to console    ${i}
    #END

    # USAR KEYWORDS
    ${Key_var}=    set variable    log to console
    run keyword    ${Key_var}    TestingWorldNoida@gmail.com

    # USAR KEYWORDS CONDICIONALES
    ${var}=    set variable    NO
    run keyword if    '${var}'=='YES'    log to console    Value Found
    run keyword if    '${var}'=='NO'    log to console    Value Not Found

*** Keywords ***
