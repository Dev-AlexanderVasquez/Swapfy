Feature: Visualización de objetos cercanos
  Como usuario
  Quiero visualizar objetos cercanos
  Para encontrar intercambios rápidos en mi zona

  Background:
    Given el usuario se encuentra en la pantalla de Inicio

  Scenario: Objetos cercanos visibles
    Given el usuario tiene habilitada su ubicación
    When el sistema carga los datos
    Then muestra la sección "Cerca de ti" con publicaciones de su distrito

  Scenario: Orden por distancia
    Given existen múltiples objetos disponibles en la zona
    When se muestran los resultados
    Then el sistema organiza los objetos en orden de menor a mayor distancia (ej. "a 1 KM")

  Scenario: Ubicación desactivada
    Given el usuario no tiene habilitada su ubicación GPS
    When intenta visualizar los objetos cercanos
    Then el sistema solicita permisos de ubicación con un pop-up