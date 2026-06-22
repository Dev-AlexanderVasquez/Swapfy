Feature: Reenvío de código de verificación
  Como usuario
  Quiero reenviar el código de verificación
  Para poder registrarme si el correo anterior no llegó

  Background:
    Given el usuario se encuentra en la pantalla de verificación de cuenta

  Scenario: Opción de reenvío visible
    When revisa las opciones disponibles en la pantalla
    Then el sistema muestra el botón "Reenviar código"

  Scenario: Reenvío exitoso
    Given el usuario selecciona "Reenviar código"
    When confirma la acción
    Then el sistema envía un nuevo código al correo registrado
    And el sistema muestra un mensaje de confirmación "Código enviado nuevamente"