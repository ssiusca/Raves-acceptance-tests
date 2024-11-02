Feature: US12 Ondas musicales en tiempo real

    Como usuario, quiero poder crear una onda musical (grupo de escucha compartida) en tiempo real para compartir 
    musica con mis amigos y disfrutar de una experiencia musical conjunta, con opciones de interaccion y 
    comunicacion en tiempo real.


Scenario Outline: Creacion de una sesion de escucha compartida
    Given el <usuario> se encuentra en la seccion de ondas musicales
    When el <usuario> seleccione la <opcion de crear nueva onda musical>
    Then el <usuario> podra definir sus caracteristicas (<nombre>, <privacidad>, invitacion a <otros usuarios>,
    <duracion>)
    And el <usuario> podra iniciar la <sesion> seleccionando cualquier <cancion>.

Example: Datos de Entrada
    | usuario | opcion de crear nueva onda musical |
    | joja    | "Iniciar Onda"                     |

    | nombre      | privacidad | otros usuarios   | duracion      | cancion        |
    | Tarde Chill | Publica    | chinita, binda p | indeterminada | From The Start |

Example: Datos de Salida
    | sesion      |
    | Tarde Chill |


Scenario Outline: Unirse a una onda musical existente
    Given el <usuario> se encuentra en la seccion de ondas musicales
    And el <usuario> ha seleccionado la <opcion de ingreso a una onda musical>
    When el <usuario> haga click en el <icono de reproduccion> de una <sesion existente>
    Then el <usuario> se unira a la <sesion publica>
    And el sistema reproduce y muestra la <cancion en tiempo real>, asi como los <demas participantes>.

Example: Datos de Entrada
    | usuario | opcion de ingreso a una onda musical | icono de reproduccion | sesion existente |
    | joja    | "Entrar en Onda"                     | "Play"                | lovergirl        |

Example: Datos de Salida
    | sesion publica | cancion en tiempo real         | demas participantes       |
    | lovergirl      | Crazy Little Thing Called Love | chinita, borjiñha, kistoo |


Scenario Outline: Ingresar a una Onda Musical mediante invitacion
    Given el <usuario> ha recibido una <invitacion> en su seccion de notificaciones para unirse a una onda musical
    When el <usuario> haga click en el <enlace de mensaje de la invitacion>
    Then el sistema lo redirige a la <onda musical> en tiempo real
    And el sistema muestra la <lista de participantes> y la <cancion> que se esta reproduciendo.

Example: Datos de Entrada
    | usuario | enlace de mensaje de la invitacion        |
    | joja    | "Unete a mi onda musical! Dale play aqui" |

Example: Datos de Salida
    | onda musical | lista de participantes | cancion en tiempo real     |
    | old favs     | casiú, anto, dianita   | You're The One That I Want |