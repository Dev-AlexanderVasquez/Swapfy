Feature: Registro de descripción del objeto
  Como usuario
  Quiero agregar una descripción del objeto
  Para explicar sus características y detalles

  Background:
    Given el usuario está completando el formulario de publicación

  Scenario: Campo de descripción visible
    When revisa la pantalla
    Then el sistema muestra el área de texto "Descripción"

  Scenario: Descripción registrada
    Given el usuario redacta "Libro en perfecto estado, solo subrayado en 2 páginas."
    When avanza en el formulario
    Then el sistema guarda la descripción ingresada temporalmente

  Scenario: Validación de campo vacío
    Given el usuario deja el área de descripción en blanco
    When intenta continuar
    Then el sistema detiene el progreso
    And solicita "Por favor, añade una breve descripción"