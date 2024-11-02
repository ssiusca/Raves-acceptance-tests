Feature: US29 Creacion de publicaciones en comunidades

    Como usuario de Raves, quiero poder crear y compartir publicaciones dentro de las comunidades, para interactuar
    con otros usuarios mediante videos, fotos, y discusiones en threads.


Scenario Outline: Publicación de Videos
    Given el <usuario> selecciona la <opción Crear Publicacion> desde una comunidad de Raves 
    And el <usuario> elige <opcion Publicar Video>
    When el <usuario> selecciona y carga el <video> desde su dispositivo
    Then el sistema debe publicarlo en la <comunidad> y permitir que otros usuarios lo visualicen e interactuen con
    el.


Example: Datos de Entrada
    | usuario | opción Crear Publicacion   |  opcion Publicar Video     | video        |
    | joja    | "Crear Publicacion"        | "Publicar Video"           | defontes.mp4 |

Example: Datos de Salida
    | video        | comunidad |
    | defontes.mp4 | detonfes  |



Scenario Outline: Publicación de Fotos
    Given el <usuario> selecciona la <opcion Crear Publicacion> desde una comunidad de Raves 
    And el <usuario> elige <opcion Publicar Foto>
    When el <usuario> selecciona y carga el <contenido> desde su dispositivo
    Then el sistema debe publicarlo en la <comunidad> y permitir que otros usuarios lo visualicen e interactuen 
    con el.


Example: Datos de Entrada
    | usuario | opción Crear Publicacion   |  opcion Publicar Foto     | contenido        |
    | joja    | "Crear Publicacion"        | "Publicar Foto"           | defontes.png     |

Example: Datos de Salida
    | contenido         | comunidad |
    | defontes.png      | detonfes  |




Scenario Outline: Publicación de Threads
    Given el <usuario> selecciona la <opcion Crear Publicacion> desde una comunidad de Raves 
    And el <usuario> elige la <opcion Publicar Thread>
    When el <usuario> elige el <titulo> y <descripcion> del mismo
    And el usuario publica el <thread>
    Then el sistema debe publicarlo en la <comunidad> y permitir que otros usuarios lo visualicen e interactuen 
    con el.


Example: Datos de Entrada
    | usuario | opcion Crear Publicacion |  opcion Publicar Thread | titulo                 |
    | joja    | "Crear Publicacion"      | "Publicar Thread"       | JUSTICIA PARA KURT </3 | 

    |  descripcion                     |
    | kurt no murió, lo asesinaron !!! |


Example: Datos de Salida
    | thread                 | comunidad     |
    | JUSTICIA PARA KURT </3 | nirvanaranos  |


