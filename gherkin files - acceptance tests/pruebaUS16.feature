Feature: US16 Cancion personalizada diaria

    Como usuario, quiero recibir una cancion personalizada para que pueda comenzar mi dia disfrutando de la musica 
    que mas resuena conmigo.


Scenario Outline: Generacion de la cancion diaria
    Given el <usuario> entrara a la plataforma por primera vez en el dia
    When el <usuario> inicie sesion e ingrese a la <pantalla principal>
    Then se genera automaticamente una recomendacion de <cancion> en base a reproducciones pasadas del <usuario>
    And se muestra en la <seccion de sugerencia diaria> para que el <usuario> la pueda reproducir facilmente.

Example: Datos de Entrada
    | usuario | pantalla principal |
    | joja    | "Para Ti"          |

Example: Datos de Salida
    | cancion            | seccion de sugerencia diaria |
    | BIRDS OF A FEATHER | "Daily Suggestion"           |