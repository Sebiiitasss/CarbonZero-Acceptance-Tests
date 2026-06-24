Feature: Carga inteligente de facturas de energía eléctrica
  Como Jefa de Seguridad, Salud y Medio Ambiente
  Quiero subir las facturas mensuales de energía eléctrica en formato PDF
  Para que el sistema extraiga automáticamente los valores de consumo y reduzca el registro manual

  Scenario: Extracción exitosa de datos del recibo
    Given que la usuaria se encuentra en el módulo de "Registro de Consumos"
    When suba un documento PDF válido de la compañía eléctrica
    And presione el botón "Procesar"
    Then el sistema deberá extraer correctamente la cantidad de kWh consumidos
    And la fecha de facturación se mostrará en un formulario para su confirmación

  Scenario: Rechazo de formato no soportado
    Given que la usuaria intenta registrar un consumo
    When suba un archivo con un formato no permitido como ".exe" o ".docx"
    Then el sistema bloqueará la subida
    And mostrará el mensaje de error "Formato no soportado. Por favor, suba un archivo PDF, JPG o PNG"
