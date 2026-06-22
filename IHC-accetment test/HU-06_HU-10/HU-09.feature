Feature: Acceso a la pantalla principal
  Como usuario
  Quiero acceder a la pantalla de Inicio
  Para visualizar objetos disponibles

  Background:
    Given el usuario inicia sesión correctamente

  Scenario: Pantalla de Inicio visible
    When accede a la aplicación
    Then el sistema muestra la pantalla principal

  Scenario: Publicaciones visibles
    Given existen objetos publicados en la plataforma
    When la pantalla de inicio carga correctamente
    Then el sistema muestra un grid de tarjetas de productos disponibles

  Scenario: Información resumida visible
    Given el usuario visualiza las publicaciones
    When revisa las tarjetas de los objetos
    Then cada tarjeta muestra "Imagen", "Título" y "Ubicación"