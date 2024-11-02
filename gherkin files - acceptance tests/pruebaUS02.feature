Feature: US02 Visualizacion de letras de canciones

    Como usuario, quiero poder visualizar las letras de las canciones mientras
    las escucho para seguir la letra, entender mejor la musica, y disfrutar mas
    de la experiencia.


Scenario Outline: Visualizacion de letra
    Given el <usuario> esta escuchando una <cancion>
    When el <usuario> selecciona la <opcion Lyrics>
    Then las <letras de la cancion> deben aparecer sincronizadas con la reproduccion
    And las <letras actuales> deben resaltarse en tiempo real de acuerdo con el avance 
    de la <cancion>.

Example: Datos de Entrada
    | usuario | cancion      | opcion Lyrics |
    | joja    | Diamond Eyes | "Letra"       |

Example: Datos de Salida
    | letras de la cancion              | letras actuales              |
    | To the edge, Till we all get off, | I will take you away with me |

