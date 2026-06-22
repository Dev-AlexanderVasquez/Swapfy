Feature: Selección de foto para publicación
  Como usuario
  Quiero seleccionar una foto
  Para continuar con la publicación del objeto

  Background:
    Given el usuario está en la vista previa de una imagen capturada o seleccionada

  Scenario: Opción "Usar foto" visible
    When el sistema muestra la imagen
    Then se visualiza el botón "Usar foto" o "Aceptar"

  Scenario: Continuar publicación
    Given el usuario selecciona "Usar foto"
    When el sistema procesa la selección
    Then redirige automáticamente al formulario de publicación de objeto

  Scenario: Cambio de imagen desde galería
    Given el usuario desea reemplazar la foto
    When selecciona "Cambiar imagen"
    Then el sistema le permite seleccionar otra fotografía de su galería o cámara