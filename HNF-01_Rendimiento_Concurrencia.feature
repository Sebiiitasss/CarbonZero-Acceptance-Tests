Feature: Soporte de usuarios concurrentes 

  Como Gerente de TI 

  Quiero que la plataforma soporte alta concurrencia 

  Para que el sistema no colapse durante los cierres de mes 

 

  Scenario: Acceso simultáneo durante cierre de mes 

    Given que 200 usuarios inician sesión al mismo tiempo 

    When los usuarios naveguen por el Dashboard interactivo 

    Then el tiempo de carga de los gráficos no debe superar los 3 segundos 

    And el sistema no debe mostrar errores de tiempo de espera (Timeout) 
