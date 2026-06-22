Feature: Verificación de cuenta
  Como usuario
  Quiero verificar mi cuenta mediante un código
  Para validar mi identidad

  Background:
    Given el usuario completó el registro de cuenta
    And el sistema le envió un código a su correo electrónico

  Scenario: Pantalla de verificación visible
    When el usuario es redirigido tras Examples registro
    Then aparece la pantalla de verificación con un campo para el código numérico

  Scenario: Código correcto
    Given el usuario recibe el código "4829"
    When ingresa "4829" en el campo de verificación
    And selecciona "Verificar"
    Then el sistema valida la cuenta
    And permite ingresar a la pantalla principal

  Scenario Outline: Código inválido
    Given el usuario escribe un código incorrecto "<Codigo>"
    When intenta verificar la cuenta
    Then el sistema muestra el mensaje de error "<Error>"

    Examples:
      | Codigo | Error                            |
      | 0000   | Código incorrecto o expirado     |
      | 12     | El código debe tener 4 dígitos   |