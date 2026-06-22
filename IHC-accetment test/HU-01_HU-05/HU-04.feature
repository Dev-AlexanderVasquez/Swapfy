Feature: Aceptación de términos y condiciones
  Como usuario
  Quiero aceptar términos y condiciones
  Para completar mi registro

  Background:
    Given el usuario está completando la pantalla de registro

  Scenario: Casilla visible
    When revisa el formulario
    Then el sistema muestra la casilla de "Acepto términos y condiciones"

  Scenario: Aceptación correcta
    Given el usuario marca la casilla de términos
    When selecciona el botón "Crear cuenta"
    Then el sistema permite finalizar el registro y avanza

  Scenario: Casilla sin seleccionar
    Given el usuario no marca la casilla de términos
    When intenta crear su cuenta
    Then el sistema bloquea el registro
    And muestra una advertencia "Debe aceptar los términos para continuar"