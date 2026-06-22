Feature: Creación de contraseña segura
  Como usuario
  Quiero crear una contraseña segura
  Para proteger mi cuenta de Swapfy

  Background:
    Given el usuario está en el formulario de registro

  Scenario: Campo de contraseña visible
    When visualiza la pantalla
    Then el sistema muestra el campo de contraseña en formato oculto

  Scenario: Contraseña válida
    Given el usuario escribe una contraseña válida "Swapfy2026*"
    When confirma el formulario
    Then el sistema permite continuar el registro

  Scenario Outline: Contraseña incorrecta o insegura
    Given el usuario ingresa una contraseña insegura "<Contrasena>"
    When intenta registrarse
    Then el sistema muestra un mensaje de advertencia "<Mensaje>"

    Examples:
      | Contrasena | Mensaje                                         |
      | 12345      | La contraseña es muy corta (mínimo 8 caracteres)|
      | swapfytest | Debe incluir al menos una mayúscula y un número |