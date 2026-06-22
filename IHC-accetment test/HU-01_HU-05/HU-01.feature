Feature: Registro de usuario
  Como usuario nuevo
  Quiero registrarme con mis datos personales
  Para acceder a las funciones de intercambio de la plataforma

  Background:
    Given el usuario abre la aplicación Swapfy
    And se encuentra en la pantalla de bienvenida

  Scenario: Visualización de formulario de registro
    When selecciona la opción "Registrarse"
    Then el sistema muestra el formulario de registro con los campos "Nombre", "Correo", "Contraseña" y "Confirmar contraseña"

  Scenario: Registro exitoso
    Given el usuario se encuentra en el formulario de registro
    When completa el formulario con datos válidos
      | Nombre | Correo           | Contraseña | Confirmar contraseña |
      | Carlos | carlos@email.com | Pass123!   | Pass123!             |
    And selecciona "Crear cuenta"
    Then el sistema registra la cuenta correctamente
    And redirige a la pantalla de verificación

  Scenario Outline: Error en campos obligatorios
    Given el usuario se encuentra en el formulario de registro
    When deja campos vacíos al completar el formulario
      | Nombre   | Correo   | Contraseña   |
      | <Nombre> | <Correo> | <Contraseña> |
    And selecciona "Crear cuenta"
    Then el sistema muestra el mensaje de error "<Mensaje>"

    Examples:
      | Nombre | Correo           | Contraseña | Mensaje                      |
      |        | carlos@email.com | Pass123!   | El nombre es obligatorio     |
      | Carlos |                  | Pass123!   | El correo es obligatorio     |
      | Carlos | carlos@email.com |            | La contraseña es obligatoria |