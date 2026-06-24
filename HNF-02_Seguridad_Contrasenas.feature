Feature: Políticas de contraseñas seguras 

  Como Administrador del Sistema 

  Quiero requerir contraseñas robustas 

  Para proteger la información confidencial de las PYMES 

 

  Scenario: Creación de cuenta con contraseña débil 

    Given que un nuevo usuario intenta registrarse en la plataforma 

    When ingrese una contraseña de menos de 8 caracteres o sin caracteres alfanuméricos 

    Then el sistema rechazará la creación de la cuenta 

    And solicitará ingresar una contraseña que contenga al menos 8 caracteres, una mayúscula y un número 
