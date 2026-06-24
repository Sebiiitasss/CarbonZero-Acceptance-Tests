Feature: Cálculo automático de CO2e por consumo eléctrico
  Como Jefa de Seguridad, Salud y Medio Ambiente
  Quiero que el sistema multiplique automáticamente mis consumos eléctricos por factores vigentes
  Para obtener el cálculo exacto de toneladas de CO2e sin depender de hojas manuales

  Scenario: Cálculo exitoso con factor vigente
    Given que se ha confirmado un registro de consumo en el sistema
    When la plataforma procese el dato
    Then multiplicará el valor por el factor de emisión nacional vigente
    And guardará el total de toneladas de CO2e en la base de datos

  Scenario: Bloqueo por factor de emisión expirado
    Given que el sistema detecta que el factor de emisión ha caducado para el año fiscal actual
    When se intente realizar un cálculo automático
    Then el sistema suspenderá la acción
    And enviará una notificación a los administradores para actualizar el parámetro normativo
