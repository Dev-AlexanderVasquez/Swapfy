Feature: Repetir captura de foto
  Como usuario
  Quiero repetir la foto si no estoy satisfecho con el resultado
  Para asegurar la mejor presentación de mi objeto

  Background:
    Given el usuario se encuentra en la vista previa de la fotografía recién tomada

  Scenario: Opción de repetir visible
    When revisa la pantalla
    Then el sistema muestra el botón "Tomar nuevamente" o "Reintentar"

  Scenario: Nueva captura realizada
    Given el usuario selecciona "Tomar nuevamente"
    And toma una nueva imagen con la cámara
    When la captura finaliza
    Then el sistema reemplaza la fotografía anterior por la nueva en la vista previa

  Scenario: Confirmación de imagen
    Given el usuario está conforme con la fotografía
    When selecciona "Continuar"
    Then el sistema conserva la imagen actual y avanza