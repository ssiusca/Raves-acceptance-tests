Feature: US17 Notificaciones instantaneas

    Como usuario, quiero recibir notificaciones instantaneas sobre sucesos relevantes en la plataforma para estar 
    siempre informado de lo que ocurre con mi cuenta y la comunidad musical.


Scenario Outline: Notificacion de nuevo contenido musical
    Given el <usuario> sigue a un <artista> que lanza una nueva <cancion o album>
    When la <cancion o album> se publique
    Then el <usuario> recibe una <notificacion> instantanea que le informa sobre la nueva <cancion o album> con un
    acceso directo.

Example: Datos de Entrada
    | usuario | artista     |
    | joja    | Linkin Park |

Example: Datos de Salida
    | cancion o album    | notificacion                           |
    | Heavy is The Crown | Linkin Park lanzo un nuevo single! ... |


Scenario Outline: Notificacion de mensajes de amigos
    Given el <usuario> cuenta con amigos en la plataforma
    When un <friend> le envie un <nuevo mensaje>
    Then el <usuario> recibe una <notificacion> instantanea que le informa sobre el <nuevo mensaje> y lo dirige a la
    <seccion de chats>.

Example: Datos de Entrada
    | usuario | friend |
    | joja    | anto   |

Example: Datos de Salida
    | notificacion              | nuevo mensaje |
    | anto te mando un mensaje! | holiii :)     |


Scenario Outline: Notificacion de nuevo contenido musical
    Given el <usuario> ha escuchado musica en Raves
    When el sistema genere una <nueva sugerencia de cancion> diaria 
    Then el <usuario> recibe una <notificacion> instantanea que le informa sobre la <nueva sugerencia de cancion> y
    lo dirige a la <seccion de sugerencia diaria>.

Example: Datos de Entrada
    | usuario |
    | joja    |

Example: Datos de Salida
    | nueva sugerencia de cancion | notificacion                       | seccion de sugerencia diaria |
    | The Emptiness Machine       | Ya salio tu sugerencia diaria! ... | "Daily Suggestion"           |