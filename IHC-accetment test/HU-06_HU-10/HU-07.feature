Feature: Inicio de sesión
  Como usuario registrado
  Quiero iniciar sesión con correo y contraseña
  Para acceder rápidamente a mi cuenta

  Background:
    Given el usuario abre la aplicación Swapfy

  Scenario: Pantalla de login visible
    When selecciona "Iniciar sesión"
    Then el sistema muestra los campos de "Correo electrónico" y "Contraseña"

  Scenario: Inicio exitoso
    Given el usuario ingresa sus credenciales
      | Correo           | Contraseña |
      | carlos@email.com | Pass123!   |
    When selecciona "Ingresar"
    Then el sistema autentica al usuario
    And abre la pantalla principal de Swapfy

  Scenario Outline: Credenciales incorrectas
    Given el usuario ingresa datos inválidos
      | Correo   | Contraseña   |
      | <Correo> | <Contraseña> |
    When intenta iniciar sesión
    Then el sistema muestra un mensaje de error "Correo o contraseña incorrectos"

    Examples:
      | Correo           | Contraseña   |
      | carlos@email.com | Incorrecto1  |
      | falso@email.com  | Pass123!     |