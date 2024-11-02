Feature: US15 Creacion de listas de reproduccion

    Como usuario, quiero poder crear listas de reproduccion personalizadas para organizar y disfrutar de mis 
    canciones favoritas.


Scenario Outline: Crear una nueva lista de reproduccion
    Given el <usuario> se encuentre en la seccion de biblioteca
    When el <usuario> seleccione la <opcion de crear playlist>
    Then el sistema le solicita ingresar un <nombre> y una <descripcion opcional> para la lista
    And el sistema crea la <playlist> con las caracteristicas indicadas por el <usuario>.

Example: Datos de Entrada
    | usuario | opcion de crear playlist | nombre | descripcion opcional |
    | joja    | "Crear Playlist"         | brat   | canciones de diva    |

Example: Datos de Salida
    | playlist |
    | brat     |


Scenario Outline: Agregar canciones a la lista de reproduccion
    Given el <usuario> ha creado una <lista de reproduccion>
    When el <usuario> accede a esa <lista de reproduccion>
    Then el sistema le solicita le muestra la <opcion de agregar cancion>
    And el <usuario> puede buscar y seleccionar una <cancion> para añadir y actualizar la <playlist>.

Example: Datos de Entrada
    | usuario | lista de reproduccion | opcion de agregar cancion | cancion  |
    | joja    | brat                  | "Añadir"                  | 365 days |

Example: Datos de Salida
    | playlist |
    | brat     |


Scenario Outline: Compartir la lista de reproduccion
    Given el <usuario> ha creado una <lista de reproduccion>
    When el <usuario> seleccione el <icono para compartir>
    Then el sistema le permite al <usuario> enviar <enlaces directos a la playlist> a traves de una <red social> de
    su eleccion
    And otros <ravers> pueden acceder a la <playlist>.

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono para compartir | cancion  | red social |
    | joja    | brat                  | "Compartir"          | 365 days | instagram  |

Example: Datos de Salida
    | enlaces directos a la playlist   | ravers  | playlist |
    | https://raves.com/playlist/brat/ | kistoo  | brat     |


Scenario Outline: Crear una lista de reproduccion colaborativa
    Given el <usuario> ha creado una <lista de reproduccion>
    When el <usuario> seleccione el <icono para agregar usuario>
    Then el sistema le permite al <usuario> añadir a uno de sus <friends> a la <playlist> o copiar un
    <enlace para unirse>

Example: Datos de Entrada
    | usuario | lista de reproduccion | icono para agregar usuario | friends |
    | joja    | brat                  | "Agregar colaborador"      | chinita |

Example: Datos de Salida
    | playlist | enlace para unirse                      |
    | brat     | https://raves.com/shared-playlist/brat/ |