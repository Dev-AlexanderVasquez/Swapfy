Feature: Visualización de tarjetas de objetos
  Como usuario
  Quiero visualizar tarjetas de objetos con información resumida
  Para identificar productos rápidamente

  Background:
    Given el usuario está en la pantalla de Inicio o Búsqueda

  Scenario: Tarjetas visibles
    When las publicaciones cargan correctamente
    Then el sistema muestra la cuadrícula con tarjetas de objetos disponibles

  Scenario: Información resumida mostrada
    Given el usuario se detiene a ver una tarjeta
    When revisa el contenido
    Then la tarjeta muestra
      | Elemento  |
      | Imagen    |
      | Título    |
      | Ubicación |

  Scenario: Acceso al detalle
    Given el usuario encuentra un objeto de interés
    When presiona sobre la tarjeta del objeto
    Then el sistema abre la pantalla con el detalle completo del producto