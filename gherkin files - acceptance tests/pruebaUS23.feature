Feature: US23 Tiempo de Respuesta Rapido

    Como usuario de Raves, quiero que el sistema responda de manera rapida a mis acciones y solicitudes, para que 
    mi experiencia sea fluida y eficiente.


Scenario Outline: Carga rapida de contenido
    Given el <usuario> se encuentra en la seccion de reproduccion de musica
    When el <usuario> selecciona una <cancion> para reproducir
    Then el sistema debe comenzar la reproduccion en menos de 2 segundos.

Example: Datos de Entrada
    | usuario | cancion      |
    | joja    | Diamond Eyes | 

Example: Datos de Salida
    | cancion      |
    | Diamond Eyes |


Scenario Outline: Respuesta a la barra de busqueda
    Given el <usuario> esta usando la barra de busqueda
    When el <usuario> ingresa una <busqueda>
    Then el sistema debe mostrar los <resultados relevantes> en menos de 1 segundo.

Example: Datos de Entrada
    | usuario | busqueda     |
    | joja    | mitski       | 

Example: Datos de Salida
    | resultados relevantes       |
    | Mitski, A Pearl, Nobody, ...|


Scenario Outline: Carga de la pagina de perfil
    Given el <usuario> quiere ver su perfil
    When el <usuario> navega a la <seccion de su perfil>
    Then el sistema debe cargar la <pagina> en menos de 3 segundos.

Example: Datos de Entrada
    | usuario | seccion de su perfil |
    | joja    | "Mi Perfil"          | 

Example: Datos de Salida
    | pagina      |
    | "Mi Perfil" |


Scenario Outline: Interaccion en tiempo real
    Given el <usuario> esta participando en una sesion de escucha compartida
    When el <usuario> envia un <comentario o reaccion>
    Then el sistema debe  mostrar la <interaccion> en la pantalla de todos los participantes en menos de 1 segundo.

Example: Datos de Entrada
    | usuario | comentario o reaccion |
    | joja    | Me gusta la cancion!  | 

Example: Datos de Salida
    | interaccion          |
    | Me gusta la cancion! |


Scenario Outline: Notificaciones instantaneas
    Given el <usuario> esta usando la plataforma
    When el <usuario> recibe una <notificacion>
    Then el sistema debe mostrar la <notificacion> en la pantalla en menos de 2 segundos.

Example: Datos de Entrada
    | usuario |
    | joja    |

Example: Datos de Salida
    | notificacion      |
    | Linkin Park lanzo un nuevo single! ... |
