Feature: Registro de ubicación del objeto
  Como usuario
  Quiero registrar la ubicación del objeto
  Para facilitar intercambios cercanos en mi comunidad

  Background:
    Given el usuario llega al paso de ubicación en el flujo de publicación

  Scenario: Mapa visible
    When la pantalla carga
    Then el sistema muestra un mapa interactivo para seleccionar la ubicación

  Scenario: Ubicación manual seleccionada
    Given el usuario mueve el pin en el mapa hacia un distrito específico
    When confirma la ubicación
    Then el sistema guarda las coordenadas seleccionadas para el objeto

  Scenario: Uso de ubicación automática
    Given el usuario tiene el GPS activo
    When presiona "Usar mi ubicación actual"
    Then el mapa se centra automáticamente en su posición
    And establece esa dirección para el objeto