Feature: Alta disponibilidad de la plataforma
  Como Consultor Ambiental
  Quiero que el sistema esté disponible en todo momento
  Para poder registrar datos y generar reportes sin interrupciones

  Scenario: Monitoreo de tiempo de actividad (Uptime)
    Given que la plataforma CarbonZero se encuentra en producción
    When se mida el tiempo de actividad durante un mes calendario
    Then el sistema debe garantizar un uptime mínimo del 99.9%
    And en caso de mantenimiento, alertar con 48 horas de anticipación
