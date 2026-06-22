Feature: Selección de estado del objeto
  Como usuario
  Quiero indicar el estado del objeto
  Para informar sus condiciones reales a los demás

  Background:
    Given el usuario se encuentra en el formulario de publicación

  Scenario: Opciones de estado visibles
    When navega a la sección de estado
    Then el sistema muestra un selector o radio buttons con las opciones de estado (Como nuevo, Bueno, Aceptable)

  Scenario: Estado seleccionado correctamente
    Given el usuario selecciona el estado "Bueno"
    When el usuario avanza
    Then el sistema registra la selección temporalmente

  Scenario: Sin selección de estado
    Given el usuario no selecciona ninguna de las opciones de estado
    When intenta completar la publicación
    Then el sistema muestra una advertencia "Seleccione el estado físico del objeto"