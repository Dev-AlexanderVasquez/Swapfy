Feature: Acceso a la cámara
  Como usuario
  Quiero acceder a la cámara desde la aplicación
  Para tomar fotos de mi objeto a intercambiar

  Background:
    Given el usuario entra al flujo de "Publicar objeto"

  Scenario: Botón de cámara visible
    When visualiza las opciones para añadir imagen
    Then el sistema muestra el botón de la cámara

  Scenario: Apertura de cámara
    Given el usuario tiene los permisos otorgados
    When presiona el botón de la cámara
    Then el sistema abre la cámara nativa del dispositivo

  Scenario: Permiso requerido
    Given el usuario no ha concedido acceso a la cámara
    When intenta abrir la cámara
    Then el sistema muestra un cuadro de diálogo solicitando habilitar los permisos