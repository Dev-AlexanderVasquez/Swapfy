Feature: Captura de foto del objeto
  Como usuario
  Quiero capturar una foto del objeto
  Para mostrar claramente su estado

  Background:
    Given el usuario tiene la cámara abierta desde la aplicación Swapfy

  Scenario: Captura exitosa
    When el usuario presiona el obturador
    Then el sistema toma la fotografía
    And la guarda temporalmente

  Scenario: Vista previa visible
    Given el usuario ha tomado una fotografía
    When la captura finaliza
    Then el sistema muestra la vista previa de la imagen tomada

  Scenario: Cancelación de captura
    When el usuario selecciona "Cancelar" o retroceder
    Then la cámara se cierra
    And el sistema regresa a la pantalla anterior sin guardar imagen