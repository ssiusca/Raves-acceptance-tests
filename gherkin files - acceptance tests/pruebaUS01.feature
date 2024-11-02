Feature: US01 Reproduccion de musica

    Como usuario, quiero poder reproducir musica facilmente desde cualquier 
    dispositivo para disfrutar de mis canciones favoritas en cualquier momento,
    para controlar la reproduccion segun mis preferencias.


Scenario Outline: Reproduccion de canciones
    Given el <usuario> esta en la pantalla principal de la plataforma
    When el <usuario> selecciona una <cancion>
    Then la aplicacion comienza a reproducir la <musica>.

Example: Datos de Entrada
    | usuario | cancion      |
    | joja    | Diamond Eyes |

Example: Datos de Salida
    | musica       |
    | Diamond Eyes |


Scenario Outline: Ajustes de Volumen
    Given el <usuario> esta escuchando una <cancion>
    When el <usuario> desliza el <control de volumen> en la interfaz de reproduccion
    Then el <volumen> debe ajustarse en tiempo real segun el nivel seleccionado.

Example: Datos de Entrada
    | usuario | cancion      | control de volumen |
    | joja    | Diamond Eyes | volumen bajo       |

Example: Datos de Salida
    | volumen |
    | medio   |


Scenario Outline: Pausa de la reproduccion de musica
    Given el <usuario> esta escuchando una <cancion>
    When el <usuario> presiona el <boton de reproduccion>
    Then la aplicacion detiene inmediatamente la <cancion>. 

Example: Datos de Entrada
    | usuario | cancion      | boton de reproduccion |
    | joja    | Diamond Eyes | "Pause"               |

Example: Datos de Salida
    | cancion      |
    | Diamond Eyes |


Scenario Outline: Reanudar la reproduccion de musica
    Given el <usuario> ha pausado una <cancion>
    When el <usuario> presiona el <boton de reproduccion> nuevamente
    Then la <cancion> debe reanudarse desde el punto en que fue pausada.

Example: Datos de Entrada
    | usuario | boton de reproduccion |
    | joja    | "Play"                |

Example: Datos de Salida
    | cancion      |
    | Diamond Eyes |