Feature: Ingreso de título del objeto
  Como usuario
  Quiero ingresar un título al objeto publicado
  Para identificarlo fácilmente en las búsquedas

  Background:
    Given el usuario se encuentra en el formulario de publicación de objeto

  Scenario: Campo de título visible
    When visualiza la pantalla
    Then el sistema muestra un campo de texto con la etiqueta "Título"

  Scenario: Registro de título exitoso
    Given el usuario escribe un título válido "Libro de Cálculo Avanzado"
    When avanza al siguiente campo
    Then el sistema guarda el texto ingresado en memoria

  Scenario: Campo vacío
    Given el usuario no escribe nada en el campo "Título"
    When intenta seleccionar "Continuar" o "Vista previa"
    Then el sistema resalta el campo
    And muestra una advertencia "El título es obligatorio"