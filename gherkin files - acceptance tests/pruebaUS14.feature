Feature: US14 Sugerencias de conexion social

    Como usuario, quiero recibir sugerencias de conexiones sociales basadas en mis intereses musicales y actividades
    dentro de la plataforma para poder interactuar y compartir experiencias con otros amantes de la musica.


Scenario Outline: Sugerencias de usuarios
    Given el <usuario> se encuentre en la seccion de explorador
    When el <usuario> seleccione la <opcion de ravers>
    Then el sistema le muestra al <usuario> la <seccion de sugerencias sociales>

Example: Datos de Entrada
    | usuario | opcion de ravers |
    | joja    | "Ravers"         |

Example: Datos de Salida
    | seccion de sugerencias sociales |
    | "Ravers", "Comunidades"         |