Feature: US21 Ajustes de Privacidad

    Como usuario, poder gestionar mis ajustes de privacidad para controlar quien puede ver mi informacion y 
    actividades en la plataforma, garantizando asi una experiencia mas segura y personalizada.


Scenario Outline: Configuracion de Visibilidad del Perfil
    Given que el <usuario> se encuentra en la seccion de ajustes de privacidad
    When el <usuario> cambia la <privacidad de su perfil> (publico, privado o solo para amigos)
    Then el sistema actualiza y muestra la configuracion de <visibilidad de su perfil>.

Example: Datos de Entrada
    | usuario | privacidad de su perfil |
    | joja    | Solo Amigos             |

Example: Datos de Salida
    | visibilidad de su perfil |
    | Solo Amigos              |