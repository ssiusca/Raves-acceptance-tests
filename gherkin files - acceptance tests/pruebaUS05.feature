Feature: US05 Preferencias de albumes y playlists

    Como usuario, quiero acceder a mis preferencias de albumes y playlists para poder comparar mis gustos con 
    otros wavers y adentrarme mas en lo que disfruto.


Scenario Outline: Visualizacion de albumes y playlists mas escuchados en un intervalo de tiempo
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de albumes y playlists mas escuchados>
    And el <usuario> elige un <intervalo de tiempo>
    Then el sistema debe mostrar una <lista ordenada de albumes y playlists> reproducidos con mayor frecuencia durante 
    ese periodo
    And la <lista> debe incluir el <nombre del album o playlist>, su <cancion mas reproducida> y su <posicion> relativa.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de albumes y playlists mas escuchados | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Albumes y Playlists"                        | "Año"               |

Example: Datos de Salida
    | lista ordenada de albumes y playlists | nombre del album o playlist  | cancion mas reproducida | posicion |
    | "Top Albumes y Playlists"             | joyitas español              | El Tiempo               | 2        |


Scenario Outline: Comparacion de estadisticas de escucha de albumes y playlists con otros usuarios
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de albumes y playlists mas escuchados>
    And el <usuario> elige un <intervalo de tiempo>
    And el <usuario> navegue por la <seccion de estadisticas>
    Then el sistema debe mostrar un <grafico> que compare sus albumes y playlists mas escuchados frente a las de sus 
    amigos u otros ravers.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de albumes y playlists mas escuchados | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Albumes y Playlists"                        | "Mes"               |

    | seccion de estadisticas |
    | "Tus Estadisticas"      | 

Example: Datos de Salida
    | grafico           |
    | grafico de barras |