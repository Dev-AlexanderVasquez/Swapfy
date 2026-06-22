Feature: Ingreso de correo electrónico
  Como usuario
  Quiero ingresar mi correo electrónico
  Para crear mi cuenta en Swapfy

  Background:
    Given el usuario se encuentra en la pantalla de registro

  Scenario: Campo de correo visible
    When el usuario visualiza el formulario
    Then el sistema muestra el campo "Correo electrónico"

  Scenario: Correo válido
    Given el usuario escribe el correo "usuario@gmail.com"
    When avanza al siguiente campo
    Then el sistema acepta el formato ingresado y no muestra errores

  Scenario Outline: Correo inválido
    Given el usuario escribe un correo con formato incorrecto "<Correo>"
    When intenta continuar
    Then el sistema muestra un mensaje de error "Formato de correo inválido" debajo del campo

    Examples:
      | Correo             |
      | usuarionumero      |
      | usuario@gmail      |
      | usuario.gmail.com  |