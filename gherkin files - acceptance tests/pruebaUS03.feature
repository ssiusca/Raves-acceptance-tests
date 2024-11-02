Feature: US03 Preferencias musicales de canciones

    Como usuario, quiero poder acceder a mis preferencias musicales para revisar y reproducir facilmente mis 
    canciones favoritas.


Scenario Outline: Visualizacion de las canciones mas escuchadas en un intervalo de tiempo
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de canciones mas escuchadas>
    And el <usuario> elige un <intervalo de tiempo>
    Then el sistema debe mostrar una <lista ordenada de las canciones> reproducidas con mayor frecuencia durante 
    ese periodo
    And la <lista> debe incluir el <nombre de la cancion>, el artista, el <numero de reproducciones> y su <posicion> 
    relativa.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de canciones mas escuchadas | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Canciones"                        | "Semestre"          |

Example: Datos de Salida
    | lista ordenada de las canciones | cancion   | artista  | numero de reproducciones  | posicion |
    | "Top Canciones"                 | Passenger | Deftones | 256 veces                 | 1        |


Scenario Outline: Comparacion de estadisticas de escucha de canciones con otros usuarios
    Given el <usuario> se encuentra en su perfil
    And el <usuario> navega por la <seccion de preferencias musicales>
    When el <usuario> selecciona la <opcion de canciones mas escuchadas>
    And el <usuario> elige un <intervalo de tiempo>
    And el <usuario> navegue por la <seccion de estadisticas>
    Then el sistema debe mostrar un <grafico> que compare sus canciones mas escuchadas frente a las de sus amigos 
    u otros wavers.

Example: Datos de Entrada
    | usuario | seccion de preferencias musicales | opcion de canciones mas escuchadas | intervalo de tiempo |
    | joja    | "Preferencias Musicales"          | "Canciones"                        | "Semestre"          |

    | seccion de estadisticas |
    | "Tus Estadisticas"      | 

Example: Datos de Salida
    | grafico    |
    | histograma |