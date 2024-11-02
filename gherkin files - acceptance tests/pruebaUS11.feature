Feature: US11 Comentarios de publicaciones

    Como usuario, quiero poder comentar en las publicaciones para compartir mis pensamientos y opiniones con otros 
    usuarios, para crear una interaccion mas social y participativa en torno a la musica.


Scenario Outline: Agregar un comentario
    Given el <usuario> esta explorando una <comunidad>
    And el <usuario> visualiza un <post> que le interesa comentar
    When el <usuario> seleccione la <opcion de comentar>
    Then debe aparecer un cuadro de texto donde pueda escribir y enviar su <comentario>. 

Example: Datos de Entrada
    | usuario | comunidad | post              | opcion de comentar |
    | joja    | defontes  | cancion Passenger | "Comentar"         |

Example: Datos de Salida
    | comentario                      |
    | Ojala vengan a Peru de nuevo... |


Scenario Outline: Eliminar un comentario
    Given el <usuario> ha publicado un <comentario> en una publicacion
    When el <usuario> seleccione la <opcion de eliminar>
    Then el <comentario previo> sera eliminado de la seccion de comentarios.

Example: Datos de Entrada
    | usuario | comunidad | post              | opcion de eliminar | comentario                      |
    | joja    | defontes  | cancion Passenger | "Eliminar"         | Ojala vengan a Peru de nuevo... |

Example: Datos de Salida
    | comentario previo |
    | -                 |


Scenario Outline: Vista de comentarios
    Given el <usuario> esta explorando una <comunidad>
    And el <usuario> ingresa a la <seccion de comentarios>
    When el <usuario> haga scroll hacia la parte inferior de la pantalla
    Then podra visualizar <comentarios> de <otros usuarios> en relacion al <post> realizado. 

Example: Datos de Entrada
    | usuario | comunidad | seccion de comentarios |
    | joja    | defontes  | "Comentarios"          |

Example: Datos de Salida
    | comentarios             | otros usuarios | post              |
    | Me encanta esta banda!! | hexes          | cancion Passenger |