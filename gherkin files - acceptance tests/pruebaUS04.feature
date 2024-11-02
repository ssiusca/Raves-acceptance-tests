Feature: US04 Preferencias de artistas

    Como usuario, quiero poder acceder a mis preferencias con respecto a los artistas que mas escucho, para asi
    tener facilidad al acceder a la musica de mis preferidos.


Scenario Outline: Visualizacion de artistas mas escuchados en un intervalo de tiempo
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de artistas mas escuchados>
    And el <usuario> elige un <intervalo de tiempo>
    Then el sistema debe mostrar una <lista ordenada de artistas> reproducidos con mayor frecuencia durante 
    ese periodo
    And la <lista> debe incluir el <nombre del artista>, su <cancion mas reproducida> y su <posicion> relativa.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de artistas mas escuchados | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Artistas"                        | "Mes"               |

Example: Datos de Salida
    | lista ordenada de artistas | artista  | cancion mas reproducida | posicion |
    | "Top Artistas"             | Deftones | My Own Summer           | 1        |


Scenario Outline: Comparacion de estadisticas de escucha de artistas con otros usuarios
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de artistas mas escuchados>
    And el <usuario> elige un <intervalo de tiempo>
    And el <usuario> navegue por la <seccion de estadisticas>
    Then el sistema debe mostrar un <grafico> que compare sus estadisticas de mas escuchados frente a las de sus amigos 
    u otros ravers.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de estadisticas de mas escuchados | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Artistas"                               | "Mes"               |

    | seccion de estadisticas |
    | "Tus Estadisticas"      | 

Example: Datos de Salida
    | grafico          |
    | diagrama de Venn |