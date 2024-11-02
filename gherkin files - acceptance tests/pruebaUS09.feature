Feature: US09 Algoritmo de descubrimiento de artistas

    Como usuario, quiero explorar la musica de diferentes regiones y descubrir tendencias musicales globales a 
    traves de un mapa interactivo que me permita visualizar las canciones, artistas y generos mas populares o 
    emergentes en distintas ubicaciones, para asi descubrir nueva musica y estar al tanto de las tendencias 
    locales y globales.


Scenario Outline: Exploracion de musica por ubicacion actual
    Given el <usuario> tiene activados los permisos de geolocalizacion
    When el <usuario> acceda a la <seccion del mapa musical>
    Then el sistema debe mostrar parte del <mapa del mundo>, mostrando los <nombres de los paises> y de sus 
    <capitales>.

Example: Datos de Entrada
    | usuario | seccion del mapa musical |
    | joja    | "Mapa Musical"           |

Example: Datos de Salida
    | mapa del mundo | nombres de los paises   | capitales           |
    | Europa         | Francia, Italia, España | Paris, Roma, Madrid |


Scenario Outline: Exploracion de musica por region especifica
    Given el <usuario> se encuentra en la seccion del mapa musical
    When el <usuario> haga zoom en una <parte del mapa> y la seleccione
    Then el sistema debe mostrar las <canciones> y <artistas> mas relevantes de la region seleccionada y 
    su <posicion> relativa
    And debe permitir al usuario interactuar con la musica (reproduccion, adicion a playlists).

Example: Datos de Entrada
    | usuario | parte del mapa |
    | joja    | Atenas, Grecia |

Example: Datos de Salida
    | canciones | artistas | posicion |
    | FANTA     | RACK     | 4        |

