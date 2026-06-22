Feature: Navegación entre secciones
  Como usuario
  Quiero navegar entre Inicio, Buscar, Subir, Chat y Perfil
  Para acceder rápidamente a las funciones principales

  Background:
    Given el usuario está autenticado y dentro de la aplicación

  Scenario: Barra de navegación visible
    When visualiza cualquier pantalla principal
    Then el sistema muestra la barra inferior de navegación con los accesos principales

  Scenario Outline: Cambio de pantalla
    Given el usuario está en la vista actual
    When presiona la opción "<Seccion>" en la barra de navegación
    Then el sistema abre la pantalla de "<Destino>"
    And resalta el ícono de "<Seccion>"

    Examples:
      | Seccion  | Destino       |
      | Inicio   | Home          |
      | Buscar   | Búsqueda      |
      | Publicar | Subir objeto  |
      | Chat     | Mensajes      |
      | Perfil   | Mi Perfil     |