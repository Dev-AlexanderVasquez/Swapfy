Feature: Recuperación de contraseña
  Como usuario
  Quiero recuperar mi contraseña si la olvidé
  Para volver a acceder a mi cuenta

  Background:
    Given el usuario está en la pantalla de inicio de sesión

  Scenario: Opción visible
    When revisa las opciones disponibles
    Then el sistema muestra el enlace "¿Olvidaste tu contraseña?"

  Scenario: Solicitud exitosa
    Given el usuario hace clic en "¿Olvidaste tu contraseña?"
    And ingresa su correo registrado "carlos@email.com"
    When solicita recuperar la contraseña
    Then el sistema envía instrucciones al correo electrónico
    And muestra el mensaje "Revisa tu bandeja de entrada"

  Scenario: Correo inválido o no registrado
    Given el usuario escribe el correo no registrado "noregistrado@email.com"
    When solicita la recuperación
    Then el sistema muestra un mensaje de error "Este correo no se encuentra registrado"